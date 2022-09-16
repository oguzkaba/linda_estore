import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/product/product_bloc.dart';

class ProductDetailView extends StatefulWidget {
  final int id;
  const ProductDetailView({Key? key, required this.id}) : super(key: key);

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  final ProductBloc _productBloc = ProductBloc();
  @override
  void initState() {
    _productBloc.add(ProductFetched(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Details View"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => ProductBloc(),
            child: BlocBuilder<ProductBloc, ProductState>(
              bloc: _productBloc,
              builder: (context, state) {
                if (state is ProductLoaded) {
                  return Center(
                      child: Image.network(state.product.image, scale: 5));
                } else if (state is ProductError) {
                  return Text("hata ${state.error}");
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        ));
  }
}
