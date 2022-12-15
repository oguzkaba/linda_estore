import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/extensions/string_extansion.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/network/service/network_service.dart';
import '../../../../core/init/routes/routes.gr.dart';
import '../../../../core/utils/custom_error_widgets.dart';
import '../../../../core/widgets/button/ebutton_widget.dart';
import '../../../../core/widgets/button/iconbutton_widget.dart';
import '../../../../core/widgets/info/empty_info_widget.dart';
import '../../../../core/widgets/loading/loading.dart';
import '../../../cart/bloc/cart_bloc.dart';
import '../../../cart/model/cart_model.dart';
import '../../../error/view/error_view.dart';
import '../../../product/blocs/products/products_bloc.dart';
import '../../../product/model/products/products_model.dart';
import '../../bloc/account_bloc.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final manager = NetworkService.instance.networkManager;

  @override
  void initState() {
    AccountBloc accountBloc = BlocProvider.of(context);
    BlocProvider.of<CartBloc>(context).add(CartEvent.fetch(
        manager: manager, scaffoldKey: scaffoldKey, accountBloc: accountBloc));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                title: Text(LocaleKeys.account_action_trackOrder_title.locale,
                    style: TextStyle(color: ColorConstants.myBlack)),
                leading: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButtonWidget(
                      size: 16,
                      onPress: () => context.router.pop(),
                      icon: Icons.chevron_left_rounded,
                      iColor: ColorConstants.myMediumGrey,
                      tooltip: 'Back'),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                centerTitle: true),
            body: BlocConsumer<CartBloc, CartState>(listener: (context, state) {
              state.whenOrNull(
                  error: (error) => CustomErrorWidgets.showError(
                      context, error.toString(),
                      topMargin: 115));
            }, builder: (context, state) {
              return state.maybeWhen(
                initial: () =>
                    const LoadingIndicatorWidget(lottieName: 'order_loading'),
                loading: () =>
                    const LoadingIndicatorWidget(lottieName: 'order_loading'),
                loaded: (cartModel) => cartModel.isNullOrEmpty
                    ? EmptyInfoWidget(
                        lottieSrc: 'empty_order',
                        underText: LocaleKeys
                            .account_action_trackOrder_emptyTitle.locale)
                    : _buildCartLoaded(cartModel),
                error: (error) => ErrorView(errorText: error.toString()),
                orElse: () => context.emptySizedHeightBoxLow,
              );
            })));
  }

  Widget _buildCartLoaded(List<CartModel> cartModel) =>
      BlocBuilder<ProductsBloc, ProductsState>(builder: (context, state) {
        return state.maybeWhen(
            loading: () =>
                const LoadingIndicatorWidget(lottieName: 'cart_loading'),
            loaded: (products, productsByCat, isFilterCat) =>
                _buildProdLoaded(context, cartModel, products),
            error: (error) =>
                Center(child: ErrorView(errorText: error.toString())),
            orElse: () => EmptyInfoWidget(
                lottieSrc: 'empty_cart',
                text: LocaleKeys.cart_emptyTitle.locale));
      });

  SingleChildScrollView _buildProdLoaded(BuildContext context,
      List<CartModel> cartModel, List<ProductsModel?> products) {
    return SingleChildScrollView(
      primary: true,
      child: Padding(
        padding: context.paddingMedium,
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: cartModel.length,
            itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    context.emptySizedHeightBoxLow,
                    Text(cartModel[index].date.toString(),
                        style: Theme.of(context).textTheme.labelMedium),
                    GestureDetector(
                      onTap: () {
                        context.router
                            .push(DashboardRouter(children: [CartView()]));
                      },
                      child: Card(
                          margin: const EdgeInsets.only(top: 10),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('ORDER-O00000${cartModel[index].id}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall),
                                      context.emptySizedHeightBoxLow,
                                      Text('TOTAL', //TODO total order price
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall),
                                      context.emptySizedHeightBoxNormal,
                                      const EButtonWidget(
                                        text: 'Delivered',
                                        bRadius: 5,
                                        width: 100,
                                        height: 30,
                                      ) //TODO order state
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: GridView.builder(
                                    itemCount:
                                        cartModel[index].products.length == 1
                                            ? 1
                                            : 2,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount:
                                          cartModel[index].products.length == 1
                                              ? 1
                                              : 2,
                                      childAspectRatio: 1.0,
                                      mainAxisSpacing: 10.0,
                                      crossAxisSpacing: 10.0,
                                    ),
                                    itemBuilder: (context, idx) {
                                      final productId = cartModel[index]
                                          .products[idx]
                                          .productId;
                                      return cartModel[index].products.length <
                                              3
                                          ? _buildPrdPreview(
                                              products[productId - 1]!.image,
                                              productId: productId)
                                          : idx < 1
                                              ? _buildPrdPreview(
                                                  products[productId - 1]!
                                                      .image,
                                                  productId: productId)
                                              : _buildPrdPreview(
                                                  '+ ${cartModel[index].products.length - 1}',
                                                  more: true,
                                                  cartModel: cartModel[index]);
                                    },
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                )),
      ),
    );
  }

  GestureDetector _buildPrdPreview(String text,
      {CartModel? cartModel, int? productId, bool more = false}) {
    return GestureDetector(
      onTap: () => more
          ? context.router.push(DashboardRouter(children: [CartView()]))
          : context.router.push(ProductDetailView(
              id: productId!,
              manager: NetworkService.instance.networkManager,
            )),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: ColorConstants.myLightGrey),
            borderRadius: BorderRadius.circular(4)),
        child: more
            ? Center(child: Text(text))
            : CachedNetworkImage(imageUrl: text),
      ),
    );
  }
}
