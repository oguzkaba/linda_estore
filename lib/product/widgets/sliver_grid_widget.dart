import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/constants/app/colors_constants.dart';
import 'package:linda_wedding_ecommerce/core/init/network/service/network_service.dart';

import '../../core/init/routes/routes.gr.dart';
import '../../features/product/model/products_model.dart';

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
        (BuildContext context, int index) {
          return _buildGrid(context, index);
        },
      ),
    );
  }

  GestureDetector _buildGrid(BuildContext context, int index) {
    return GestureDetector(
      onTap: () => context.router.push(ProductDetailView(
        id: model[index]!.id!,
        manager: NetworkService.instance.networkManager,
      )),
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            spreadRadius: 3,
            blurRadius: 1,
            offset: const Offset(0, 0.2), // changes position of shadow
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(model[index]!.image!,
                fit: BoxFit.contain, height: context.height * .15),
            Text(model[index]!.title!,
                maxLines: context.isSmallScreen ? 1 : 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12)),
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
                    Text(" ${model[index]!.rating!.rate} ",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold)),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: context.normalBorderRadius,
                      color: ColorConstants.secondaryColor.withOpacity(.3)),
                  child: Text("${model[index]!.price} ₺",
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
