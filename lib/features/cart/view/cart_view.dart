import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/init/routes/routes.gr.dart';
import 'package:linda_wedding_ecommerce/product/widgets/iconbutton_widget.dart';
import 'package:linda_wedding_ecommerce/product/widgets/textfield_widget.dart';
import '../../product/model/product_model.dart';
import '../../../core/constants/app/colors_constants.dart';
import '../../../product/widgets/ebutton_widget.dart';
import '../../product/blocs/product/product_bloc.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  ValueNotifier<int> quantity = ValueNotifier(1);
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
      if (state is ProductLoaded) {
        return ValueListenableBuilder(
            valueListenable: quantity,
            builder: (context, value, child) => quantity.value == 0
                ? const Center(
                    child: Text("Empty Cart")) //TODO: Add Empty Cart Widget
                : Scaffold(
                    body: SingleChildScrollView(
                      primary: true,
                      child: Padding(
                        padding: context.paddingMedium,
                        child: Center(
                          child: Column(
                            children: [
                              const Text("My Cart",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              Padding(padding: context.paddingLow),
                              ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 1,
                                itemBuilder: (context, index) => Dismissible(
                                  dismissThresholds: const {
                                    DismissDirection.endToStart: 0.6,
                                    DismissDirection.startToEnd: 0.6
                                  },
                                  confirmDismiss: (direction) async =>
                                      await _showDialogWidget(context),
                                  movementDuration: context.durationNormal,
                                  direction: DismissDirection.horizontal,
                                  background: _slideRightBackground(),
                                  //secondaryBackground: _slideLeftBackground(),
                                  key: UniqueKey(),
                                  child: Card(
                                    child: Row(children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: SizedBox(
                                            width: context.width / 4,
                                            height: context.height / 8,
                                            child: CachedNetworkImage(
                                              imageUrl: state.product.image!,
                                              fit: BoxFit.fitHeight,
                                            )),
                                      ),
                                      SizedBox(
                                        width: context.width * .6,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(state.product.title!,
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
                                                  "${state.product.price} ₺",
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
                                                        onPress: () =>
                                                            quantity.value == 1
                                                                ? null
                                                                : quantity
                                                                    .value -= 1,
                                                        circleRadius: 14,
                                                        size: 12,
                                                        icon: Icons.remove,
                                                        iColor: ColorConstants
                                                            .myBlack,
                                                        tooltip: "Remove"),
                                                    Text(
                                                      quantity.value.toString(),
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: ColorConstants
                                                              .primaryColor,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    IconButtonWidget(
                                                        onPress: () =>
                                                            quantity.value += 1,
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
                                        const Text("Sub Total"),
                                        const Expanded(child: Divider()),
                                        Text(
                                            "${(state.product.price! * quantity.value * .82).toStringAsFixed(2)} ₺",
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text("Tax"),
                                        const Expanded(child: Divider()),
                                        Text(
                                            "${(state.product.price! * quantity.value * .18).toStringAsFixed(2)} ₺",
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(),
                              const TextFieldWidget(
                                  hintText: "Enter Voucher Code",
                                  sIcon: Icons.check_circle_rounded)
                            ],
                          ),
                        ),
                      ),
                    ),
                    bottomNavigationBar: _buildBottomWidget(
                        context, state.product, quantity.value)));
      }
      return Container(); //TODO empty cart
    }));
  }

  Future<bool?> _showDialogWidget(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Delete Confirmation"),
          content: const Text("Are you sure you want to delete this item?"),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  context.router.pop(true);
                  quantity.value = 0;
                },
                child: const Text("Delete")),
            TextButton(
              onPressed: () => context.router.pop(false),
              child: const Text("Cancel"),
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

Container _buildBottomWidget(
    BuildContext context, ProductModel product, int quantity) {
  return Container(
    decoration: BoxDecoration(
      color: ColorConstants.myWhite,
      boxShadow: [
        BoxShadow(
          color: ColorConstants.myLightGrey,
          offset: const Offset(0.0, 1.0), //(x,y)
          blurRadius: 6.0,
        ),
      ],
    ),
    height: 60,
    child: Padding(
      padding:
          EdgeInsets.symmetric(horizontal: context.width * .02, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "PRICE",
                style: TextStyle(
                    fontSize: 12,
                    color: ColorConstants.myLightGrey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "${(product.price! * quantity).toStringAsFixed(2)} ₺",
                style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          EButtonWidget(
              text: "CHECKOUT",
              width: 150,
              onPress: () => context.router.push(const CheckOutView()))
        ],
      ),
    ),
  );
}
