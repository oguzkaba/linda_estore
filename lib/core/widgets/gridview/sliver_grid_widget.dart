import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

import '../../../features/favorite/bloc/favorite_bloc.dart';
import '../../../features/product/model/products/products_model.dart';
import '../../constants/app/colors_constants.dart';
import '../../extensions/string_extansion.dart';
import '../../init/lang/locale_keys.g.dart';
import '../../init/network/service/network_service.dart';
import '../../init/routes/routes.gr.dart';
import '../../init/themes/cubit/theme_cubit.dart';
import '../button/iconbutton_widget.dart';

class MySliverGridWidget extends StatelessWidget {
  final List<ProductsModel?> model;

  const MySliverGridWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: context.isSmallScreen
              ? 2
              : context.isMediumScreen
                  ? 3
                  : 4,
          childAspectRatio: 0.9),
      delegate: SliverChildBuilderDelegate(
        childCount: model.length,
        (context, index) {
          return _buildGrid(context, index);
        },
      ),
    );
  }

  Widget _buildGrid(BuildContext context, int index) {
    return GestureDetector(
        onTap: () => context.router.push(ProductDetailView(
              id: model[index]!.id,
              manager: NetworkService.instance.networkManager,
            )),
        child: Stack(children: [
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.05),
                    spreadRadius: 3,
                    blurRadius: 1,
                    offset: const Offset(0, 0.2), // changes position of shadow
                  ),
                ],
                color: context.watch<ThemeCubit>().state.isDark
                    ? ColorConstants.myMediumGrey
                    : ColorConstants.myWhite,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CachedNetworkImage(
                    imageUrl: model[index]!.image,
                    fit: BoxFit.contain,
                    height: context.height * .15),
                Text(model[index]!.title,
                    maxLines: context.isSmallScreen ? 1 : 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: ColorConstants.myYellow,
                          size: 10,
                        ),
                        Text(' ${model[index]!.rating.rate} ',
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: context.normalBorderRadius,
                          color: ColorConstants.secondaryColor.withOpacity(.3)),
                      child: Text(
                          '${model[index]!.price} ${LocaleKeys.currency.locale}',
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 5,
            top: 10,
            child: BlocBuilder<FavoriteBloc, FavoriteState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => context.emptySizedHeightBoxLow,
                    loaded: (favList) => IconButtonWidget(
                        onPress: () => context
                            .read<FavoriteBloc>()
                            .add(FavoriteEvent.toogle(index: model[index]!.id)),
                        icon: favList.contains(model[index]!.id)
                            ? Icons.favorite_rounded
                            : Icons.favorite_border,
                        size: 18,
                        circleRadius: 18,
                        iColor: favList.contains(model[index]!.id)
                            ? ColorConstants.primaryColor
                            : context.watch<ThemeCubit>().state.isDark
                                ? ColorConstants.myWhite
                                : ColorConstants.myMediumGrey,
                        tooltip: 'Favorite'));
              },
            ),
          ),
        ]));
  }
}
