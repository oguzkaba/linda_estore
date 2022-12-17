import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_estore/features/cart/model/cart_model.dart';

import '../../../core/constants/app/colors_constants.dart';
import '../../../core/extensions/string_extansion.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../../../core/init/network/service/network_service.dart';
import '../../../core/utils/dialog_widget.dart';
import '../../../core/widgets/button/button.dart';
import '../../../core/widgets/info/empty_info_widget.dart';
import '../../../core/widgets/loading/loading.dart';
import '../../cart/bloc/cart_bloc.dart';
import '../../error/view/error_view.dart';
import '../../product/blocs/products/products_bloc.dart';
import '../../product/model/products/products_model.dart';
import '../bloc/favorite_bloc.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final manager = NetworkService.instance.networkManager;
  List<ProductsModel?> products = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body:
        BlocBuilder<FavoriteBloc, FavoriteState>(builder: (context, stateFav) {
      return stateFav.maybeWhen(
        orElse: () => context.emptySizedHeightBoxLow,
        loaded: (favList) => favList.isEmpty
            ? EmptyInfoWidget(
                lottieSrc: 'empty_fav_list',
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
                              lottieName: 'favorite_loading'),
                          loading: () => const LoadingIndicatorWidget(
                              lottieName: 'favorite_loading'),
                          loaded: (products, productsByCat, isFilterCat) =>
                              _buildFavList(favList, products),
                          error: (error) => Center(
                              child: ErrorView(errorText: error.toString())));
                    })
                  ],
                )),
      );
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
          confirmDismiss: (direction) async => await CustomDialogWidget.show(
            context: context,
            title: LocaleKeys.favorites_alert_title.locale,
            content: LocaleKeys.favorites_alert_content.locale,
            press: () {
              BlocProvider.of<FavoriteBloc>(context)
                  .add(FavoriteEvent.toogle(index: favList[index]));
              context.router.pop(true);
            },
          ),
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
                      imageUrl: products[favList[index] - 1]!.image,
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
                      child: Text(products[favList[index] - 1]!.title,
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
                          '${products[favList[index] - 1]!.price} ₺',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        BlocBuilder<CartBloc, CartState>(
                          builder: (context, state) => _addToCartButton(
                              context, state, products, favList, index),
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

  IconButtonWidget _addToCartButton(BuildContext context, CartState cartState,
      List<ProductsModel?> products, List<int> favList, int index) {
    return IconButtonWidget(
        iColor: ColorConstants.primaryColor,
        icon: Icons.shopping_basket_rounded,
        onPress: () {
          var productId = products[favList[index] - 1]!.id;
          cartState.maybeWhen(
              loaded: (cartModel) => cartModel.last.products
                      .where((element) => element.productId == productId)
                      .isEmpty
                  ? context.read<CartBloc>().add(CartEvent.add(
                      cartModel: cartModel.last, productId: productId))
                  : null,
              orElse: () => context.read<CartBloc>().add(CartEvent.add(
                  cartModel: CartModel(
                      id: 5, userId: 1, date: DateTime.now(), products: []),
                  productId: products[favList[index] - 1]!.id)));
        });
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
