import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/extansions/string_extansion.dart';
import 'package:linda_wedding_ecommerce/core/init/lang/locale_keys.g.dart';

import '../../../core/constants/app/colors_constants.dart';
import '../../../core/extansions/asset_extansion.dart';
import '../../../product/mock/model/fake_reviews_model.dart';
import '../../../product/utils/custom_error_widgets.dart';
import '../../../product/widgets/export_widget.dart';
import '../../../product/widgets/iconbutton_widget.dart';
import '../blocs/product/product_bloc.dart';
import '../model/product_model.dart';

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
  ValueNotifier<bool> showReviews = ValueNotifier(false);
  @override
  void initState() {
    BlocProvider.of<ProductBloc>(context)
        .add(ProductFetched(widget.manager, widget.scaffoldKey, widget.id));
    super.initState();
  }

  @override
  void dispose() {
    showReviews.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductBloc, ProductState>(
      listener: (BuildContext context, Object? state) {
        if (state is ProductError) {
          CustomErrorWidgets.showError(context, state.error.toString());
        }
      },
      builder: (context, state) {
        if (state is ProductLoaded) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: ColorConstants.myWhite,
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                leading: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: IconButtonWidget(
                      size: 16,
                      onPress: () => context.router.pop(),
                      icon: Icons.chevron_left_rounded,
                      iColor: ColorConstants.myMediumGrey,
                      tooltip: "Back"),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: IconButtonWidget(
                        onPress: () => debugPrint("added favorite"),
                        icon: state.product.id! % 3 == 0
                            ? Icons.favorite_border
                            : Icons.favorite_rounded,
                        size: 16,
                        iColor: state.product.id! % 3 == 0
                            ? ColorConstants.myMediumGrey
                            : ColorConstants.primaryColor,
                        tooltip: "Favorite"),
                  ),
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
                        style: Theme.of(context).textTheme.titleSmall),
                    Padding(padding: context.paddingLow),
                    GestureDetector(
                      onTap: () => showReviews.value = true,
                      child: Row(
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
                          Text(
                              " ( ${state.product.rating!.count} ${LocaleKeys.home_productDet_review.locale}) ",
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ),
                    Padding(padding: context.paddingNormal),
                    Text(LocaleKeys.home_productDet_details.locale,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(decoration: TextDecoration.underline)),
                    Padding(padding: context.paddingLow),
                    Text(state.product.description!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(fontWeight: FontWeight.normal)),
                    Padding(padding: context.paddingNormal),
                    Text(LocaleKeys.home_productDet_color.locale,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(decoration: TextDecoration.underline)),
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
                    Text(LocaleKeys.home_productDet_size.locale,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(decoration: TextDecoration.underline)),
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
                    GestureDetector(
                      onTap: () => showReviews.value = !showReviews.value,
                      child: Text(LocaleKeys.home_productDet_reviews.locale,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(decoration: TextDecoration.underline)),
                    ),
                    Padding(padding: context.paddingLow),
                    ValueListenableBuilder(
                        valueListenable: showReviews,
                        builder: (context, value, child) => showReviews.value
                            ? _buildReviewsList(state.reviews)
                            : context.emptySizedHeightBoxLow)
                  ],
                ),
              )),
              bottomNavigationBar: _buildBottomWidget(context, state.product),
            ),
          );
        } else if (state is ProductError) {
          return Scaffold(body: Center(child: SvgPicture.asset("error".toSVG)));
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

  ListView _buildReviewsList(List<MockDataModel> reviews) {
    return ListView.builder(
      //*TODO long wait for load data--(lazyload require)
      itemCount: reviews.length,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: ((context, index) => Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: ColorConstants.myLightGrey,
                child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: reviews[index].image,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error)),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(reviews[index].fullName,
                      style: Theme.of(context).textTheme.bodySmall),
                  Row(
                    children: [
                      for (var i = 0; i < 5; i++)
                        Icon(Icons.star,
                            color: i < reviews[index].rate
                                ? ColorConstants.myYellow
                                : ColorConstants.myLightGrey,
                            size: 16),
                    ],
                  ),
                ],
              ),
              subtitle: Text(reviews[index].review),
            ),
          )),
    );
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
                  LocaleKeys.home_productDet_price.locale,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  "${product.price} ₺",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            EButtonWidget(
                text: LocaleKeys.home_productDet_buttonText.locale, width: 125)
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
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
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
