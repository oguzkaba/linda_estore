import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/product/widgets/iconbutton_widget.dart';
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
      if (state is ProductLoaded) {
        return Scaffold(
            body: Padding(
              padding: context.paddingMedium,
              child: Center(
                child: Column(
                  children: [
                    const Text("My Cart",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(padding: context.paddingLow),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) => Card(
                        child: ListTile(
                          leading: CachedNetworkImage(
                              imageUrl: state.product.image!),
                          title: Text(state.product.title!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14)),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${state.product.price} ₺",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: ColorConstants.primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  IconButtonWidget(
                                      icon: Icons.remove,
                                      iColor: ColorConstants.myDark,
                                      tooltip: "Remove"),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: ColorConstants.primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButtonWidget(
                                      icon: Icons.add,
                                      iColor: ColorConstants.myDark,
                                      tooltip: "Add")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            bottomNavigationBar: _buildBottomWidget(context, state.product));
      }
      return Container();
    }));
  }
}

Container _buildBottomWidget(BuildContext context, ProductModel product) {
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
                "${product.price} ₺",
                style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const EButtonWidget(text: "CHECKOUT", width: 150)
        ],
      ),
    ),
  );
}
