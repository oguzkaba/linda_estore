import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/components/indicator/loading_indicator.dart';
import 'package:linda_wedding_ecommerce/core/extansions/string_extansion.dart';
import 'package:linda_wedding_ecommerce/core/init/lang/locale_keys.g.dart';
import 'package:linda_wedding_ecommerce/features/favorite/bloc/favorite_bloc.dart';
import 'package:linda_wedding_ecommerce/product/widgets/empty_info_widget.dart';

import '../../../core/constants/app/colors_constants.dart';
import '../../../product/utils/custom_error_widgets.dart';
import '../../error/view/error_view.dart';
import '../../product/blocs/products/products_bloc.dart';
import '../../product/model/products_model.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  List<ProductsModel?> products = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body:
        BlocBuilder<FavoriteBloc, FavoriteState>(builder: (context, stateFav) {
      if (stateFav is FavoriteLoaded) {
        return stateFav.favList.isEmpty
            ? EmptyInfoWidget(
                lottieSrc: "empty_fav_list",
                text: LocaleKeys.favorites_emptyTitle.locale)
            : Padding(
                padding: context.paddingMedium,
                child: Column(
                  children: [
                    Center(
                      child: Text(LocaleKeys.favorites_topTitle.locale,
                          style: Theme.of(context).textTheme.headlineSmall),
                    ),
                    Padding(padding: context.paddingLow),
                    BlocBuilder<ProductsBloc, ProductsState>(
                        builder: (context, state) {
                      return state.when(
                          initial: () => const LoadingIndicatorWidget(
                              lottieName: "favorite_loading"),
                          loading: () => const LoadingIndicatorWidget(
                              lottieName: "favorite_loading"),
                          loaded: (products, productsByCat, isFilterCat) =>
                              _buildFavList(stateFav.favList, products),
                          error: (error) => Center(
                              child: ErrorView(errorText: error.toString())));
                    })
                  ],
                ));
      } else {
        return const SizedBox();
      }
    })));
  }

  Expanded _buildFavList(List<int> favList, List<ProductsModel?> products) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: favList.length,
        itemBuilder: (context, index) => Dismissible(
          dismissThresholds: const {
            DismissDirection.endToStart: 0.6,
          },
          confirmDismiss: (direction) async =>
              await _showDialogWidget(context, favList[index]),
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
                      imageUrl: products[favList[index] - 1]!.image!,
                      fit: BoxFit.contain,
                    )),
              ),
              SizedBox(
                width: context.width * .53,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(products[favList[index] - 1]!.title!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                    context.emptySizedHeightBoxLow,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${products[favList[index] - 1]!.price} ₺",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Future<bool?> _showDialogWidget(BuildContext context, int index) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(LocaleKeys.favorites_alert_title.locale),
          content: Text(LocaleKeys.favorites_alert_content.locale),
          actions: <Widget>[
            TextButton(
                onPressed: () async {
                  BlocProvider.of<FavoriteBloc>(context)
                      .add(ToogleFavorite(index));
                  context.router.pop(true);
                },
                child: Text(LocaleKeys.favorites_alert_buttonText.locale)),
            TextButton(
              onPressed: () => context.router.pop(false),
              child: Text(LocaleKeys.favorites_alert_button2Text.locale),
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
