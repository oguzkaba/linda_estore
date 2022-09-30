import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/extansions/image_extansion.dart';
import 'package:linda_wedding_ecommerce/product/widgets/export_widget.dart';
import 'package:linda_wedding_ecommerce/product/widgets/iconbutton_widget.dart';
import '../../../core/constants/app/colors_constants.dart';
import '../../../product/utils/custom_error_widgets.dart';
import '../blocs/product/product_bloc.dart';

class ProductDetailView extends StatefulWidget {
  final int id;
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const ProductDetailView(
      {Key? key, required this.id, required this.manager, this.scaffoldKey})
      : super(key: key);

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  @override
  void initState() {
    BlocProvider.of<ProductBloc>(context)
        .add(ProductFetched(widget.manager, widget.scaffoldKey, widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductBloc, ProductState>(
      listener: (BuildContext context, Object? state) {
        if (state is ProductError) {
          CustomErrorWidgets.showError(context, state);
        }
      },
      builder: (context, state) {
        if (state is ProductLoaded) {
          return Scaffold(
              backgroundColor: ColorConstants.myWhite,
              appBar: AppBar(
                elevation: 0,
                actions: [
                  IconButtonWidget(
                      icon: Icons.favorite_border,
                      iColor: ColorConstants.myLightGrey,
                      tooltip: "Favorite")
                ],
              ),
              body: SingleChildScrollView(
                  child: Padding(
                padding: context.paddingNormal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.network(state.product.image!,
                          height: context.height / 2),
                    ),
                    Padding(padding: context.paddingLow),
                    Text(state.product.title!,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Padding(padding: context.paddingLow),
                    Row(
                      children: [
                        Row(
                          children: [
                            for (var i = 0; i < 5; i++)
                              Icon(Icons.star,
                                  color: i < state.product.rating!.rate
                                      ? ColorConstants.myYellow
                                      : ColorConstants.myLightGrey,
                                  size: 16),
                          ],
                        ),
                        Text(" ( ${state.product.rating!.count} Reviews) ",
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12)),
                      ],
                    ),
                    Padding(padding: context.paddingNormal),
                    const Text("Details",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                    Text(state.product.description!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: const TextStyle(fontSize: 12)),
                    Padding(padding: context.paddingNormal),
                    const Text("Size",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                    Padding(padding: context.paddingLow),
                    Row(
                      children: [
                        _buildSizeContainer("S"),
                        context.emptySizedWidthBoxLow,
                        _buildSizeContainer("M", selected: true),
                        context.emptySizedWidthBoxLow,
                        _buildSizeContainer("L"),
                        context.emptySizedWidthBoxLow,
                        _buildSizeContainer("XL")
                      ],
                    )
                  ],
                ),
              )),
              bottomNavigationBar: Container(
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
                  padding: context.paddingNormal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PRICE",
                            style: TextStyle(
                                fontSize: 10,
                                color: ColorConstants.myLightGrey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${state.product.price} ₺",
                            style: TextStyle(
                                color: ColorConstants.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const EButtonWidget(text: "ADD", width: 150)
                    ],
                  ),
                ),
              ));
        } else if (state is ProductError) {
          return Center(child: SvgPicture.asset("error".toSVG));
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Container _buildSizeContainer(String size, {bool selected = false}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          border:
              selected ? Border.all(color: ColorConstants.primaryColor) : null,
          color: ColorConstants.myLightGrey.withOpacity(.5),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(size,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selected
                      ? ColorConstants.primaryColor
                      : ColorConstants.myMediumGrey))),
    );
  }
}
