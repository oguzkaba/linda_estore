import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/extansions/string_extansion.dart';
import 'package:linda_wedding_ecommerce/features/cart/model/cart_model.dart';
import 'package:linda_wedding_ecommerce/product/widgets/ebutton_widget.dart';

import '../../../../core/components/indicator/loading_indicator.dart';
import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/network/service/network_service.dart';
import '../../../../product/utils/custom_error_widgets.dart';
import '../../../../product/widgets/iconbutton_widget.dart';
import '../../../../product/widgets/textfield_widget.dart';
import '../../../auth/bloc/auth_bloc.dart';
import '../../../cart/bloc/cart_bloc.dart';
import '../../../cart/view/widgets/empty_cart_widget.dart';
import '../../../error/view/error_view.dart';
import '../../../product/blocs/products/products_bloc.dart';

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
    final authBloc = BlocProvider.of<AuthBloc>(context);
    BlocProvider.of<CartBloc>(context)
        .add(FetchCarts(manager, scaffoldKey, authBloc));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocConsumer<CartBloc, CartState>(listener: (context, state) {
      if (state is CartError) {
        CustomErrorWidgets.showError(context, state.error.toString(),
            topMargin: 115);
      }
    }, builder: (context, state) {
      if (state is CartLoading) {
        return const LoadingIndicatorWidget(lottieName: "order_loading");
      } else if (state is CartLoaded) {
        if (state.cartModel.isNullOrEmpty) {
          return const EmptyCartWidget();
        } else {
          return _buildCartLoaded(state.cartModel);
        }
      } else if (state is CartError) {
        return Center(child: ErrorView(errorText: state.error.toString()));
      }
      return const LoadingIndicatorWidget(lottieName: "cart_loading");
    }));
  }

  Widget _buildCartLoaded(List<CartModel> cartModel) =>
      BlocBuilder<ProductsBloc, ProductsState>(builder: (context, state) {
        if (state is ProductsLoading) {
          return const LoadingIndicatorWidget(lottieName: "cart_loading");
        } else if (state is ProductsLoaded) {
          return Scaffold(
              body: SingleChildScrollView(
            primary: true,
            child: Padding(
              padding: context.paddingMedium,
              child: Center(
                child: Column(children: [
                  Text(LocaleKeys.account_action_order.locale,
                      style: Theme.of(context).textTheme.headlineSmall),
                  context.emptySizedHeightBoxLow,
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: cartModel.length,
                      itemBuilder: (context, index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              context.emptySizedHeightBoxLow,
                              Text(cartModel[index].date.toString(),
                                  style:
                                      Theme.of(context).textTheme.labelSmall),
                              Card(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(cartModel[index].id.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall),
                                          context.emptySizedHeightBoxLow,
                                          Text("TOTAL", //TODO total order price
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall),
                                          const EButtonWidget(
                                              text:
                                                  "Delivered") //TODO order state
                                        ],
                                      ),
                                      GridView.builder(
                                        itemCount: 4,
                                        itemBuilder: (context, idx) => idx < 2
                                            ? Container(
                                                decoration: BoxDecoration(
                                                  color: ColorConstants
                                                      .myLightGrey,
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: CachedNetworkImage(
                                                  imageUrl: state
                                                      .products[cartModel[index]
                                                          .products[idx]
                                                          .productId]!
                                                      .image
                                                      .toString(),
                                                  fit: BoxFit.contain,
                                                ),
                                              )
                                            : Container(
                                                decoration: BoxDecoration(
                                                  color: ColorConstants
                                                      .myLightGrey,
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Center(
                                                    child: Text(
                                                        (cartModel[index]
                                                                    .products
                                                                    .length -
                                                                3)
                                                            .toString(),
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .titleMedium)),
                                              ),
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount:
                                                    context.isSmallScreen
                                                        ? 2
                                                        : context.isMediumScreen
                                                            ? 3
                                                            : 4,
                                                childAspectRatio: 0.9),
                                      )
                                    ],
                                  )),
                            ],
                          )),
                ]),
              ),
            ),
          ));
        } else if (state is ProductsError) {
          return Center(child: ErrorView(errorText: state.error.toString()));
        }
        return const EmptyCartWidget();
      });
}
