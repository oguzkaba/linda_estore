import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import '../../../core/constants/app/colors.dart';
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
          title: const Text("LindaStore"),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(35.0),
              child: BlocConsumer<CategoriesBloc, CategoriesState>(
                  listener: (context, state) {
                if (state is CategoriesError) {
                  final snackBar = SnackBar(
                    backgroundColor: ColorConstants.myRed,
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
                  return _buildCatogoriesTab(context, state);
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
              return _buildSliverLoadingWidget(context);
            } else if (state is ProductsLoading) {
              return _buildSliverLoadingWidget(context);
            } else if (state is ProductsLoaded) {
              return _buildGridProducts(context, state.products);
              //return Container();
            } else {
              return SliverToBoxAdapter(child: Container());
            }
          },
        )
      ]),
      bottomNavigationBar: SizedBox(
        height: 42,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          iconSize: 18,
          selectedLabelStyle: const TextStyle(fontSize: 10),
          unselectedLabelStyle: const TextStyle(fontSize: 10),
          items: const [
            BottomNavigationBarItem(
                label: "Home", icon: Icon(Icons.home_rounded)),
            BottomNavigationBarItem(
                label: "Cart", icon: Icon(Icons.shopping_basket_rounded)),
            BottomNavigationBarItem(
                label: "Favorites", icon: Icon(Icons.favorite_rounded)),
            BottomNavigationBarItem(label: "Account", icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }

  DefaultTabController _buildCatogoriesTab(
      BuildContext context, CategoriesLoaded state) {
    return DefaultTabController(
      animationDuration: context.durationLow,
      length: state.categories.length,
      child: TabBar(
        labelColor: ColorConstants.myBlack,
        unselectedLabelColor: ColorConstants.myLightGrey,
        indicatorSize: TabBarIndicatorSize.label,
        onTap: (value) {
          BlocProvider.of<ProductsBloc>(context)
              .add(ProductsByCategoryFetched(state.categories[value]));
        },
        isScrollable: true,
        indicatorColor: ColorConstants.primaryColor,
        tabs: state.categories
            .map((e) => Container(
                  padding: context.paddingLow,
                  decoration: null,
                  child: Text(e.toString().toCapitalized(),
                      style: const TextStyle(fontSize: 12)),
                ))
            .toList(),
      ),
    );
  }
}

Widget _buildLoadingWidget() =>
    const Center(child: CircularProgressIndicator.adaptive());

Widget _buildSliverLoadingWidget(BuildContext context) => SliverToBoxAdapter(
    child: SizedBox.fromSize(
        size: Size(context.width, context.height),
        child: const Center(child: CircularProgressIndicator.adaptive())));

Widget _buildGridProducts(BuildContext context, List<ProductsModel> model) {
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
