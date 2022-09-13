import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/features/onboard/bloc/products_bloc.dart';
import 'package:linda_wedding_ecommerce/features/onboard/model/product_model.dart';
import 'package:linda_wedding_ecommerce/widgets/ebutton_widget.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  final _productBloc = ProductsBloc();

  @override
  void initState() {
    _productBloc.add((ProductsFetched()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductsBloc, ProductsState>(
          bloc: _productBloc,
          builder: (context, state) {
            if (state is ProductsInitial) {
              return _buildLoadingWidget();
            } else if (state is ProductsLoading) {
              return _buildLoadingWidget();
            } else if (state is ProductsLoaded) {
              return _buildCard(context, state.products);
            } else if (state is ProductsError) {
              return Container();
            } else {
              return Container();
            }
          }),
    );
  }

  Center _buildLoadingWidget() =>
      const Center(child: CircularProgressIndicator());
}

Widget _buildCard(BuildContext context, List<ProductsModel?> model) {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20),
    shrinkWrap: true,
    itemCount: model.length,
    itemBuilder: ((context, index) {
      return Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(model[index]!.image,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width / 8),
            Text(model[index]!.title),
            Text(model[index]!.price.toString()),
            Text(model[index]!.rating.count.toString()),
            EButtonWidget(onPress: () => debugPrint("object"))
          ],
        ),
      );
    }),
  );
}
