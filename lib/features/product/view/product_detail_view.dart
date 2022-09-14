import 'package:flutter/material.dart';
import '../../onboard/model/products_model.dart';

class ProductDetailView extends StatefulWidget {
  final ProductsModel? productModel;
  final int? id;
  const ProductDetailView({Key? key, this.productModel, this.id})
      : super(key: key);

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widget.productModel == null || widget.id == null
            ? const Text("Hata Oluştu...")
            : SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(widget.productModel!.image, scale: 5),
                    Text(widget.productModel!.description)
                  ],
                ),
              ));
  }
}
