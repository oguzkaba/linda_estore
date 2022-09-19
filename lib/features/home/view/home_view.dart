import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import '../../../core/init/routes/routes.gr.dart';
import '../../product/blocs/categories/categories_bloc.dart';

import '../../product/blocs/products/products_bloc.dart';
import '../../product/model/products_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    BlocProvider.of<CategoriesBloc>(context).add((const CategoriesFetched(-1)));
    BlocProvider.of<ProductsBloc>(context).add((ProductsFetched()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          pinned: true,
          snap: true,
          floating: true,
          centerTitle: true,
          title: const Text("LindaWedding - Home"),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(44.0),
              child: BlocConsumer<CategoriesBloc, CategoriesState>(
                  listener: (context, state) {
                if (state is CategoriesError) {
                  final snackBar = SnackBar(
                    backgroundColor: Colors.red,
                    content: state.error == "XMLHttpRequest error."
                        ? const Text("Hata-> (İstekte bulunulan adres hatalı.)")
                        : const Text("Hata-> (Connection timeout)"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              }, builder: (context, state) {
                if (state is CategoriesInitial) {
                  return _buildLoadingWidget();
                } else if (state is CategoriesLoading) {
                  return _buildLoadingWidget();
                } else if (state is CategoriesLoaded) {
                  return DefaultTabController(
                    animationDuration: context.durationLow,
                    length: state.categories.length,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: TabBar(
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.deepPurpleAccent,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(colors: [
                            Colors.deepPurpleAccent,
                            Color.fromARGB(255, 110, 57, 255),
                            Colors.deepPurpleAccent,
                          ]),
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        onTap: (value) {
                          BlocProvider.of<ProductsBloc>(context).add(
                              ProductsByCategoryFetched(
                                  state.categories[value]));
                        },
                        isScrollable: true,
                        indicatorColor: Colors.deepPurpleAccent,
                        tabs: state.categories
                            .map((e) => Container(
                                  padding: context.paddingLow,
                                  decoration: null,
                                  child: Text(e.toString().toCapitalized()),
                                ))
                            .toList(),
                      ),
                    ),
                  );
                } else {
                  return context.emptySizedHeightBoxHigh;
                }
              })),
        ),
        BlocConsumer<ProductsBloc, ProductsState>(
          listener: (context, state) {
            if (state is ProductsError) {
              final snackBar = SnackBar(
                backgroundColor: Colors.red,
                content: state.error == "XMLHttpRequest error."
                    ? const Text("Hata-> (İstekte bulunulan adres hatalı.)")
                    : const Text("Hata-> (Bağlantı zaman aşımı..)"),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          builder: (context, state) {
            if (state is ProductsInitial) {
              return _buildSliverLoadingWidget();
            } else if (state is ProductsLoading) {
              return _buildSliverLoadingWidget();
            } else if (state is ProductsLoaded) {
              return _buildBodyWidget(context, state.products);
              //return Container();
            } else {
              return SliverToBoxAdapter(child: Container());
            }
          },
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(label: "", icon: Icon(Icons.home_rounded)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.home_rounded)),
      ]),
    );
  }
}

Widget _buildLoadingWidget() =>
    const Center(child: CircularProgressIndicator());

Widget _buildSliverLoadingWidget() =>
    const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));

Widget _buildBodyWidget(BuildContext context, List<ProductsModel> model) {
  return SliverGrid(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, childAspectRatio: 3 / 2),
    delegate: SliverChildBuilderDelegate(
      childCount: model.length,
      (BuildContext context, int index) {
        return GestureDetector(
          onTap: () =>
              context.router.push(ProductDetailView(id: model[index].id)),
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
                  Image.network(model[index].image,
                      fit: BoxFit.contain, height: 180),
                  Text(model[index].title, overflow: TextOverflow.ellipsis),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (var i = 0; i < 5; i++)
                        Icon(
                          model[index].rating.rate.round() > i
                              ? Icons.star
                              : Icons.star_border_outlined,
                          color: Colors.amber,
                          size: 14,
                        ),
                      Text(" ( ${model[index].rating.count} )",
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${model[index].price} TL",
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
      },
    ),
  );
}
