import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants/app/colors_constants.dart';

class SliverShimmerWidget extends StatelessWidget {
  const SliverShimmerWidget({super.key});

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
        childCount: 8,
        (context, index) {
          return Shimmer.fromColors(
              direction: ShimmerDirection.ttb,
              baseColor: ColorConstants.shimmerBase,
              highlightColor: ColorConstants.shimmerHighlight,
              child: Padding(
                padding: context.horizontalPaddingLow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    context.emptySizedHeightBoxLow,
                    Container(
                      margin: context.horizontalPaddingMedium,
                      color: ColorConstants.myWhite,
                      height: context.height * .15,
                    ),
                    Container(color: ColorConstants.myBlack, height: 14),
                    Container(color: ColorConstants.myWhite, height: 20),
                    context.emptySizedHeightBoxLow
                  ],
                ),
              ));
        },
      ),
    );
  }
}
