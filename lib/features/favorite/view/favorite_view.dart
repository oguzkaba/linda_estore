import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/components/indicator/loading_indicator.dart';
import 'package:linda_wedding_ecommerce/core/extansions/string_extansion.dart';
import 'package:linda_wedding_ecommerce/core/init/lang/locale_keys.g.dart';
import 'package:linda_wedding_ecommerce/product/widgets/empty_info_widget.dart';

import '../../../core/constants/app/colors_constants.dart';
import '../../../product/utils/custom_error_widgets.dart';
import '../../product/blocs/products/products_bloc.dart';
import '../cubit/favorite_cubit.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: context.paddingMedium,
                child: BlocBuilder<FavoriteCubit, FavoriteState>(
                    builder: (context, stateFav) {
                  return stateFav.favList.isEmpty
                      ? EmptyInfoWidget(
                          lottieSrc: "empty_fav_list",
                          text: LocaleKeys.favorites_emptyTitle.locale)
                      : Column(
                          children: [
                            Center(
                              child: Text(LocaleKeys.favorites_topTitle.locale,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall),
                            ),
                            Padding(padding: context.paddingLow),
                            BlocBuilder<ProductsBloc, ProductsState>(
                                builder: (context, state) {
                              if (state is ProductsLoading) {
                                return const LoadingIndicatorWidget(
                                    lottieName: "favorite_loading");
                              } else if (state is ProductsLoaded) {
                                return Expanded(
                                  child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: stateFav.favList.length,
                                    itemBuilder: (context, index) =>
                                        Dismissible(
                                      dismissThresholds: const {
                                        DismissDirection.endToStart: 0.6,
                                      },
                                      confirmDismiss: (direction) async =>
                                          await _showDialogWidget(
                                              context, stateFav.favList[index]),
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
                                                      .products[stateFav
                                                          .favList[index]]!
                                                      .image!,
                                                  fit: BoxFit.contain,
                                                )),
                                          ),
                                          SizedBox(
                                            width: context.width * .53,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                      state.products[index]!
                                                          .title!,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall),
                                                ),
                                                context.emptySizedHeightBoxLow,
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "${state.products[index]!.price} ₺",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleMedium,
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
                              } else if (state is ProductsError) {
                                CustomErrorWidgets.showError(
                                    context, state.error.toString());
                              }
                              return context.emptySizedHeightBoxLow;
                            })
                          ],
                        );
                }))));
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
                onPressed: () {
                  context.read<FavoriteCubit>().toogleFavorite(index);
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
