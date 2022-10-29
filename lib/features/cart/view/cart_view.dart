import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/extansions/string_extansion.dart';
import 'package:linda_wedding_ecommerce/core/init/lang/locale_keys.g.dart';

import '../../../core/components/indicator/loading_indicator.dart';
import '../../../core/constants/app/colors_constants.dart';
import '../../../core/init/network/service/network_service.dart';
import '../../../core/init/routes/routes.gr.dart';
import '../../../product/widgets/ebutton_widget.dart';
import '../../../product/widgets/iconbutton_widget.dart';
import '../../../product/widgets/textfield_widget.dart';
import '../../product/blocs/products/products_bloc.dart';
import '../bloc/cart_bloc.dart';
import '../model/cart_model.dart';
import 'widgets/empty_cart_widget.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final manager = NetworkService.instance.networkManager;

  @override
  void initState() {
    BlocProvider.of<CartBloc>(context).add((FetchCarts(manager, scaffoldKey)));
    super.initState();
  }

  ValueNotifier<List<int>> quantityList = ValueNotifier([]);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocBuilder<CartBloc, CartState>(builder: (context, state) {
      if (state is CartLoading) {
        return const LoadingIndicator(lottieName: "cart_loading");
      } else if (state is CartLoaded) {
        return _buildCartLoaded(state.cartsModel);
      } else if (state is CartError) {
        return Text(state.error.toString());
      }
      return const LoadingIndicator(lottieName: "cart_loading");
    }));
  }

  Widget _buildCartLoaded(List<CartModel> cartModel) =>
      BlocBuilder<ProductsBloc, ProductsState>(builder: (context, state) {
        double total = 0;
        if (state is ProductsLoading) {
          return const LoadingIndicator(lottieName: "favorite_loading");
        } else if (state is ProductsLoaded) {
          //*Total Cart Price
          for (var e in cartModel[1].products) {
            quantityList.value.add(e.quantity);
            total += e.quantity * state.products[e.productId]!.price!;
          }
          void quantityChangeNotifier(int index) {
            List<int> newQList = List.from(quantityList.value);
            // Modify here newList as you wish.
            quantityList.value = newQList;
          }

          return ValueListenableBuilder(
              valueListenable: quantityList,
              builder: (context, value, child) => quantityList.value.isEmpty
                  ? const EmptyCartWidget() //TODO: Add Empty Cart Widget
                  : Scaffold(
                      body: SingleChildScrollView(
                        primary: true,
                        child: Padding(
                          padding: context.paddingMedium,
                          child: Center(
                            child: Column(
                              children: [
                                Text(LocaleKeys.cart_topTitle.locale,
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                                Padding(padding: context.paddingLow),
                                ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: cartModel[1].products.length,
                                  itemBuilder: (context, index) => Dismissible(
                                    dismissThresholds: const {
                                      DismissDirection.endToStart: 0.6
                                    },
                                    confirmDismiss: (direction) async =>
                                        await _showDialogWidget(context, index),
                                    movementDuration: context.durationNormal,
                                    direction: DismissDirection.endToStart,
                                    background: _slideRightBackground(),
                                    //secondaryBackground: _slideLeftBackground(),
                                    key: UniqueKey(),
                                    child: Card(
                                      child: Row(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                              width: context.width * .24,
                                              height: context.height / 8,
                                              child: CachedNetworkImage(
                                                imageUrl: state
                                                    .products[cartModel[1]
                                                        .products[index]
                                                        .productId]!
                                                    .image!,
                                                fit: BoxFit.contain,
                                              )),
                                        ),
                                        SizedBox(
                                          width: context.width * .6,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                    state
                                                        .products[cartModel[1]
                                                            .products[index]
                                                            .productId]!
                                                        .title!,
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14)),
                                              ),
                                              context.emptySizedHeightBoxLow,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "${state.products[cartModel[1].products[index].productId]!.price} ₺",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: ColorConstants
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Row(
                                                    children: [
                                                      IconButtonWidget(
                                                          onPress: () {
                                                            quantityChangeNotifier(
                                                                index);
                                                            quantityList.value[
                                                                        index] ==
                                                                    1
                                                                ? null
                                                                : quantityList
                                                                        .value[
                                                                    index] -= 1;
                                                            quantityChangeNotifier(
                                                                index);
                                                          },
                                                          circleRadius: 14,
                                                          size: 12,
                                                          icon: Icons.remove,
                                                          iColor: ColorConstants
                                                              .myBlack,
                                                          tooltip: "Remove"),
                                                      Text(
                                                        cartModel[1]
                                                            .products[index]
                                                            .quantity
                                                            .toString(),
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: ColorConstants
                                                                .primaryColor,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      IconButtonWidget(
                                                          onPress: () =>
                                                              quantityList
                                                                      .value[
                                                                  index] += 1,
                                                          circleRadius: 14,
                                                          size: 12,
                                                          icon: Icons.add,
                                                          iColor: ColorConstants
                                                              .myBlack,
                                                          tooltip: "Add")
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                                const Divider(),
                                Container(
                                  color: ColorConstants.myWhite,
                                  padding: context.paddingHigh,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(LocaleKeys.cart_subTotal.locale),
                                          const Expanded(child: Divider()),
                                          Text(
                                              "${(total * .82).toStringAsFixed(2)} ₺",
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold))
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(LocaleKeys.cart_tax.locale),
                                          const Expanded(child: Divider()),
                                          Text(
                                              "${(total * .18).toStringAsFixed(2)} ₺",
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                TextFieldWidget(
                                    hintText: LocaleKeys.cart_discCode.locale,
                                    sIcon: Icons.check_circle_rounded)
                              ],
                            ),
                          ),
                        ),
                      ),
                      persistentFooterAlignment: AlignmentDirectional.center,
                      persistentFooterButtons: [
                          _buildBottomWidget(context, total)
                        ]));
        } else {
          return const EmptyCartWidget();
          //TODO empty cart
        }
      });

  Future<bool?> _showDialogWidget(BuildContext context, int index) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(LocaleKeys.cart_alert_title.locale),
          content: Text(LocaleKeys.cart_alert_content.locale),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  context.router.pop(true);
                  quantityList.value.removeAt(index);
                },
                child: Text(LocaleKeys.cart_alert_buttonText.locale)),
            TextButton(
              onPressed: () => context.router.pop(false),
              child: Text(LocaleKeys.cart_alert_button2Text.locale),
            ),
          ],
        );
      },
    );
  }

  Container _slideRightBackground() {
    return Container(
      color: ColorConstants.myRed,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.delete_forever_rounded,
              color: ColorConstants.myWhite,
            ),
            context.emptySizedWidthBoxNormal
          ],
        ),
      ),
    );
  }
}

Padding _buildBottomWidget(BuildContext context, double total) {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width * .02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.cart_price.locale,
                style: TextStyle(
                    fontSize: 12,
                    color: ColorConstants.myDark,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "${total.toStringAsFixed(2)} ₺",
                style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          EButtonWidget(
              text: LocaleKeys.cart_buttonText.locale,
              width: 150,
              onPress: () => context.router.push(const Checkout()))
        ],
      ));
}
