import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/extansions/string_extansion.dart';
import 'package:linda_wedding_ecommerce/core/init/routes/routes.gr.dart';
import 'package:linda_wedding_ecommerce/features/account/bloc/account_bloc.dart';
import 'package:linda_wedding_ecommerce/features/cart/model/cart_model.dart';
import 'package:linda_wedding_ecommerce/product/widgets/ebutton_widget.dart';

import '../../../../core/components/indicator/loading_indicator.dart';
import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/network/service/network_service.dart';
import '../../../../product/utils/custom_error_widgets.dart';
import '../../../../product/widgets/iconbutton_widget.dart';
import '../../../cart/bloc/cart_bloc.dart';
import '../../../../product/widgets/empty_info_widget.dart';
import '../../../error/view/error_view.dart';
import '../../../product/blocs/products/products_bloc.dart';
import '../../../product/model/products_model.dart';

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
    BlocProvider.of<CartBloc>(context)
        .add(FetchCarts(manager, scaffoldKey, accountBloc));
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
                      tooltip: "Back"),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                centerTitle: true),
            body: BlocConsumer<CartBloc, CartState>(listener: (context, state) {
              if (state is CartError) {
                CustomErrorWidgets.showError(context, state.error.toString(),
                    topMargin: 115);
              }
            }, builder: (context, state) {
              if (state is CartLoading) {
                return const LoadingIndicatorWidget(
                    lottieName: "order_loading");
              } else if (state is CartLoaded) {
                if (state.cartModel.isNullOrEmpty) {
                  return EmptyInfoWidget(
                      lottieSrc: "empty_order",
                      underText: LocaleKeys
                          .account_action_trackOrder_emptyTitle.locale);
                } else {
                  return _buildCartLoaded(state.cartModel);
                }
              } else if (state is CartError) {
                return Center(
                    child: ErrorView(errorText: state.error.toString()));
              }
              return const LoadingIndicatorWidget(lottieName: "cart_loading");
            })));
  }

  Widget _buildCartLoaded(List<CartModel> cartModel) =>
      BlocBuilder<ProductsBloc, ProductsState>(builder: (context, state) {
        if (state is ProductsLoading) {
          return const LoadingIndicatorWidget(lottieName: "cart_loading");
        } else if (state is ProductsLoaded) {
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
                              context.router.push(DashboardRouter(children: [
                                CartView(cartModel: cartModel[index])
                              ]));
                            },
                            child: Card(
                                margin: const EdgeInsets.only(top: 10),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 18),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                "ORDER-O00000${cartModel[index].id}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall),
                                            context.emptySizedHeightBoxLow,
                                            Text(
                                                "TOTAL", //TODO total order price
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall),
                                            context.emptySizedHeightBoxNormal,
                                            const EButtonWidget(
                                              text: "Delivered",
                                              bRadius: 5,
                                              width: 100,
                                              height: 30,
                                            ) //TODO order state
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: GridView.builder(
                                          itemCount: cartModel[index]
                                                      .products
                                                      .length ==
                                                  1
                                              ? 1
                                              : 2,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: cartModel[index]
                                                        .products
                                                        .length ==
                                                    1
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
                                            return cartModel[index]
                                                        .products
                                                        .length <
                                                    3
                                                ? _buildPrdPreview(
                                                    state
                                                        .products[
                                                            productId - 1]!
                                                        .image!,
                                                    productId: productId)
                                                : idx < 1
                                                    ? _buildPrdPreview(
                                                        state
                                                            .products[
                                                                productId - 1]!
                                                            .image!,
                                                        productId: productId)
                                                    : _buildPrdPreview(
                                                        "+ ${cartModel[index].products.length - 1}",
                                                        more: true,
                                                        cartModel:
                                                            cartModel[index]);
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
        } else if (state is ProductsError) {
          return Center(child: ErrorView(errorText: state.error.toString()));
        }
        return EmptyInfoWidget(
            lottieSrc: "empty_cart", text: LocaleKeys.cart_emptyTitle.locale);
      });

  GestureDetector _buildPrdPreview(String text,
      {CartModel? cartModel, int? productId, bool more = false}) {
    return GestureDetector(
      onTap: () => more
          ? context.router
              .push(DashboardRouter(children: [CartView(cartModel: cartModel)]))
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
