import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/init/routes/routes.gr.dart';
import '../../features/product/model/products_model.dart';

class MySliverGridWidget extends StatelessWidget {
  final List<ProductsModel> model;

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
          return GestureDetector(
            onTap: () =>
                context.router.push(ProductDetailView(id: model[index].id)),
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
                  Image.network(model[index].image,
                      fit: BoxFit.contain, height: context.height / 7),
                  Text(model[index].title,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (var i = 0; i < 5; i++)
                        Icon(
                          model[index].rating.rate.round() > i
                              ? Icons.star
                              : Icons.star_border_outlined,
                          color: Colors.amber,
                          size: 10,
                        ),
                      Text(" ( ${model[index].rating.count} )",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 12)),
                    ],
                  ),
                  Text(
                    "${model[index].price} TL",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
