import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/core/routes/routes.gr.dart';
import 'package:linda_wedding_ecommerce/features/onboard/bloc/products_bloc.dart';
import 'package:linda_wedding_ecommerce/features/onboard/model/products_model.dart';

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
      appBar: AppBar(
        title: const Text("LindaWedding - Home"),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: BlocConsumer<ProductsBloc, ProductsState>(
          listener: (context, state) {
            if (state is ProductsError) {
              final snackBar = SnackBar(
                backgroundColor: Colors.red,
                content: state.error.toString() == "XMLHttpRequest error."
                    ? const Text("Hata-> (İstekte bulunulan adres hatalı.)")
                    : const Text("Hata-> (Connection timeout)"),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          bloc: _productBloc,
          builder: (context, state) {
            if (state is ProductsInitial) {
              return _buildLoadingWidget();
            } else if (state is ProductsLoading) {
              return _buildLoadingWidget();
            } else if (state is ProductsLoaded) {
              return _buildCard(context, state.products);
            } else {
              return Container();
            }
          }),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(label: "", icon: Icon(Icons.home_rounded)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.home_rounded)),
      ]),
    );
  }

  Center _buildLoadingWidget() =>
      const Center(child: CircularProgressIndicator());
}

Widget _buildCard(BuildContext context, List<ProductsModel?> model) {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisExtent: 280,
        maxCrossAxisExtent: 400,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5),
    shrinkWrap: true,
    itemCount: model.length,
    itemBuilder: ((context, index) {
      return GestureDetector(
        onTap: () => context.router
            .push(ProductDetailView(productModel: model[index]!, id: index)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.05),
                spreadRadius: 5,
                blurRadius: 1,
                offset: const Offset(0, 0.2), // changes position of shadow
              ),
            ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Image.network(model[index]!.image,
                    fit: BoxFit.contain, height: 180),
                Text(model[index]!.title, overflow: TextOverflow.ellipsis),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    for (var i = 0; i < 5; i++)
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 14,
                      ),
                    Text(" ( ${model[index]!.rating.count} )",
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${model[index]!.price} TL",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }),
  );
}
