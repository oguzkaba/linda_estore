import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/extansions/asset_extansion.dart';
import 'package:linda_wedding_ecommerce/product/mock/model/fake_reviews_model.dart';
import 'package:linda_wedding_ecommerce/product/mock/service/mock_data_service.dart';
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
  late List<MockDataModel> reviews;
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
          return SafeArea(
            child: Scaffold(
              backgroundColor: ColorConstants.myWhite,
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
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
                          height: context.height * .5),
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
                    Padding(padding: context.paddingLow),
                    Text(state.product.description!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: const TextStyle(fontSize: 12)),
                    Padding(padding: context.paddingNormal),
                    const Text("Color",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                    Padding(padding: context.paddingLow),
                    Row(
                      children: [
                        _buildColorOption(ColorConstants.myBlack,
                            selected: true),
                        context.emptySizedWidthBoxLow,
                        _buildColorOption(ColorConstants.myRed),
                        context.emptySizedWidthBoxLow,
                        _buildColorOption(ColorConstants.myBlue),
                        context.emptySizedWidthBoxLow,
                        _buildColorOption(ColorConstants.myYellow)
                      ],
                    ),
                    Padding(padding: context.paddingNormal),
                    const Text("Size",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                    Padding(padding: context.paddingLow),
                    Row(
                      children: [
                        _buildSizeOption("S"),
                        context.emptySizedWidthBoxLow,
                        _buildSizeOption("M", selected: true),
                        context.emptySizedWidthBoxLow,
                        _buildSizeOption("L"),
                        context.emptySizedWidthBoxLow,
                        _buildSizeOption("XL")
                      ],
                    ),
                    Padding(padding: context.paddingNormal),
                    const Text("Reviews",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                    Padding(padding: context.paddingLow),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: ((context, index) => ListTile(
                          leading: CircleAvatar(
                              child: Image.network(
                            state.reviews[index].image,
                            fit: BoxFit.cover,
                          )),
                          title: Text(state.reviews[index].fullName))),
                      itemCount: state.reviews.length,
                    )
                  ],
                ),
              )),
              bottomNavigationBar: _buildBottomWidget(context, state),
            ),
          );
        } else if (state is ProductError) {
          return Container(
              color: ColorConstants.myWhite,
              width: double.infinity,
              height: double.infinity,
              child: Center(child: SvgPicture.asset("error".toSVG)));
        } else {
          return Container(
              color: ColorConstants.myWhite,
              width: double.infinity,
              height: double.infinity,
              child: const Center(child: CircularProgressIndicator()));
        }
      },
    );
  }

  Container _buildBottomWidget(BuildContext context, ProductLoaded state) {
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
                  "${state.product.price} ₺",
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorConstants.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const EButtonWidget(text: "ADD", width: 125)
          ],
        ),
      ),
    );
  }

  Container _buildSizeOption(String size, {bool selected = false}) {
    return Container(
      width: 30,
      height: 30,
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

  _buildColorOption(Color color, {bool selected = false}) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: color.withOpacity(.3),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: CircleAvatar(
              backgroundColor: color,
              radius: 8,
              child: selected
                  ? Center(
                      child: Icon(Icons.check,
                          size: 12, color: ColorConstants.myWhite))
                  : null)),
    );
  }
}
