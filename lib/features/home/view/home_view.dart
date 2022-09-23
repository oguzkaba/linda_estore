import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/product/widgets/sliver_grid_widget.dart';
import '../../../core/constants/app/colors.dart';
import '../../../product/widgets/bottom_nav_bar_widget.dart';
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
    BlocProvider.of<CategoriesBloc>(context).add((const CategoriesFetched(0)));
    BlocProvider.of<ProductsBloc>(context).add((ProductsFetched()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: _buildBody,
      bottomNavigationBar: _buildBottomNavBar,
    );
  }

  CustomScrollView get _buildBody => CustomScrollView(slivers: [
        SliverAppBar(
          pinned: true,
          snap: true,
          floating: true,
          centerTitle: true,
          title: const Text("LindaStore"),
          bottom: _buildSliverAppBarBottom,
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
            } else {
              return SliverToBoxAdapter(child: context.emptySizedHeightBoxHigh);
            }
          },
        )
      ]);

  PreferredSize get _buildSliverAppBarBottom => PreferredSize(
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
          return _buildLoadingWidget;
        } else if (state is CategoriesLoading) {
          return _buildLoadingWidget;
        } else if (state is CategoriesLoaded) {
          return _buildCatogoriesTab(context, state.categories);
        } else {
          return context.emptySizedHeightBoxLow;
        }
      }));

  SizedBox get _buildBottomNavBar => const SizedBox(
        height: 42,
        child: MyBottomNavBar(),
      );

  DefaultTabController _buildCatogoriesTab(BuildContext context, List model) {
    return DefaultTabController(
      animationDuration: context.durationLow,
      length: model.length,
      child: TabBar(
        labelColor: ColorConstants.myBlack,
        unselectedLabelColor: ColorConstants.myLightGrey,
        indicatorSize: TabBarIndicatorSize.label,
        onTap: (value) {
          if (value == 0) {
            BlocProvider.of<ProductsBloc>(context).add((ProductsFetched()));
          } else {
            BlocProvider.of<ProductsBloc>(context)
                .add(ProductsByCategoryFetched(model[value]));
          }
        },
        isScrollable: true,
        indicatorColor: ColorConstants.primaryColor,
        tabs: model
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

Widget get _buildLoadingWidget =>
    const Center(child: CircularProgressIndicator.adaptive());

Widget _buildSliverLoadingWidget(BuildContext context) => SliverToBoxAdapter(
    child: SizedBox.fromSize(
        size: Size(context.width, context.height),
        child: const Center(child: CircularProgressIndicator.adaptive())));

Widget _buildGridProducts(BuildContext context, List<ProductsModel> model) {
  return MySliverGridWidget(model: model);
}
