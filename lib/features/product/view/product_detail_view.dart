import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linda_wedding_ecommerce/core/extansions/image_extansion.dart';
import '../../../product/utils/custom_error_widgets.dart';
import '../blocs/product/product_bloc.dart';

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
  @override
  void initState() {
    BlocProvider.of<ProductBloc>(context)
        .add(ProductFetched(widget.manager, widget.scaffoldKey, widget.id));
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
        child: BlocConsumer<ProductBloc, ProductState>(
          listener: (BuildContext context, Object? state) {
            if (state is ProductError) {
              CustomErrorWidgets.showError(context, state);
            }
          },
          builder: (context, state) {
            if (state is ProductLoaded) {
              return Center(
                  child: Image.network(state.product.image!, scale: 5));
            } else if (state is ProductError) {
              return Center(child: SvgPicture.asset("error".toSVG));
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
