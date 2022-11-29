import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/extansions/string_extansion.dart';
import 'package:linda_wedding_ecommerce/core/init/lang/locale_keys.g.dart';
import 'package:linda_wedding_ecommerce/features/error/view/error_view.dart';
import 'package:shimmer/shimmer.dart';
import '../../../core/init/lang/translate_remote_entry.dart';
import '../../../core/init/network/service/network_service.dart';
import '../../../core/init/themes/cubit/theme_cubit.dart';
import '../../../product/widgets/iconbutton_widget.dart';
import '../../../product/widgets/search_bar_widget.dart';
import '../../../product/widgets/sliver_grid_widget.dart';
import '../../../product/widgets/sliver_shimmer_widget.dart';
import '../../../core/constants/app/colors_constants.dart';
import '../../../product/utils/custom_error_widgets.dart';
import '../../product/blocs/categories/categories_bloc.dart';
import '../../product/blocs/products/products_bloc.dart';
import '../../product/model/products_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final manager = NetworkService.instance.networkManager;
  List<ProductsModel?> productsListforSearch = [];

  @override
  void initState() {
    debugPrint("Home init method..............");
    BlocProvider.of<CategoriesBloc>(context)
        .add((CategoriesFetched(0, manager, _scaffoldKey)));
    BlocProvider.of<ProductsBloc>(context).add(
        (ProductsEvent.fetch(manager: manager, scaffoldKey: _scaffoldKey)));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldKey,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: context.watch<ThemeCubit>().state.isDark
              ? ColorConstants.myDark
              : Colors.grey[50],
          body: _buildBody,
        ),
      ),
    );
  }

  CustomScrollView get _buildBody => CustomScrollView(slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 36,
          pinned: true,
          snap: false,
          floating: true,
          actions: [
            IconButtonWidget(
                circleRadius: 16,
                size: 16,
                icon: Icons.add_alert_rounded,
                iColor: ColorConstants.primaryColor,
                tooltip: "alert")
          ],
          titleSpacing: 4,
          title: BlocBuilder<ProductsBloc, ProductsState>(
              builder: (context, state) {
            return state.maybeWhen(
                loaded: (products, productsByCat, isFilterCat) {
                  productsListforSearch = products;
                  return SizedBox(
                      height: 30,
                      child: SearchBarWidget(
                          products:
                              productsListforSearch.map((e) => e!).toList()));
                },
                orElse: () => const SizedBox());
          }),
          bottom: _buildSliverAppBarBottom,
        ),
        BlocConsumer<ProductsBloc, ProductsState>(
          listener: (context, state) {
            state.whenOrNull(
                error: (error) => CustomErrorWidgets.showError(
                    context, error.toString(),
                    topMargin: 115));
          },
          builder: (context, state) {
            return state.when(
                initial: () => const SliverShimmerWidget(),
                loading: () => const SliverShimmerWidget(),
                loaded: (products, productsByCat, isFilterCat) => isFilterCat
                    ? _buildGridProducts(context, productsByCat)
                    : _buildGridProducts(context, products),
                error: (error) => SliverToBoxAdapter(
                    child:
                        ErrorView(errorText: LocaleKeys.error_error.locale)));
          },
        )
      ]);

  PreferredSize get _buildSliverAppBarBottom => PreferredSize(
      preferredSize: const Size.fromHeight(35.0),
      child: BlocConsumer<CategoriesBloc, CategoriesState>(
          listener: (context, state) {
        if (state is CategoriesError) {
          CustomErrorWidgets.showError(context, state.error.toString(),
              topMargin: 115);
        }
      }, builder: (context, state) {
        if (state is CategoriesInitial) {
          return _buildLoadingWidget(context);
        } else if (state is CategoriesLoading) {
          return _buildLoadingWidget(context);
        } else if (state is CategoriesLoaded) {
          return _buildCatogoriesTab(context, state.categories);
        } else {
          return context.emptySizedHeightBoxLow;
        }
      }));

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
            BlocProvider.of<ProductsBloc>(context).add((ProductsEvent.fetch(
                manager: manager, scaffoldKey: _scaffoldKey)));
          } else {
            BlocProvider.of<ProductsBloc>(context).add(ProductsEvent.fetchByCat(
                manager: manager,
                scaffoldKey: _scaffoldKey,
                categoryName: model[value]));
          }
        },
        isScrollable: true,
        indicatorColor: ColorConstants.primaryColor,
        tabs: model
            .map((e) => Container(
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  decoration: null,
                  child: Text(translateCategory(e.toString().toCapitalized()),
                      style: const TextStyle(fontSize: 12)),
                ))
            .toList(),
      ),
    );
  }
}

Widget _buildLoadingWidget(BuildContext context) {
  return Center(
      child: Shimmer.fromColors(
          baseColor: ColorConstants.shimmerBase,
          highlightColor: ColorConstants.shimmerHighlight,
          child: DefaultTabController(
            length: 3,
            child: TabBar(indicator: const BoxDecoration(), tabs: [
              for (var z = 0; z < 3; z++)
                Container(
                  padding: context.verticalPaddingLow,
                  color: ColorConstants.myWhite,
                  height: 20,
                ),
            ]),
          )));
}

Widget _buildGridProducts(BuildContext context, List<ProductsModel?> model) {
  return MySliverGridWidget(model: model);
}
