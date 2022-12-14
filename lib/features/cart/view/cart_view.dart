import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

import '../../../core/constants/app/colors_constants.dart';
import '../../../core/enums/checkout_enums.dart';
import '../../../core/extensions/string_extansion.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../../../core/init/network/service/network_service.dart';
import '../../../core/init/routes/routes.gr.dart';
import '../../../core/utils/custom_error_widgets.dart';
import '../../../core/utils/dialog_widget.dart';
import '../../../core/widgets/button/ebutton_widget.dart';
import '../../../core/widgets/button/iconbutton_widget.dart';
import '../../../core/widgets/info/empty_info_widget.dart';
import '../../../core/widgets/loading/loading.dart';
import '../../../core/widgets/textfield/textfield_widget.dart';
import '../../error/view/error_view.dart';
import '../../product/blocs/products/products_bloc.dart';
import '../../product/model/products/products_model.dart';
import '../bloc/cart_bloc.dart';
import '../model/cart_model.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final manager = NetworkService.instance.networkManager;

  @override
  void initState() {
    super.initState();
  }

  ValueNotifier<List<int>> quantityList = ValueNotifier([]);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocConsumer<CartBloc, CartState>(listener: (context, state) {
      state.whenOrNull(
          error: (error) => CustomErrorWidgets.showError(
              context, error.toString(),
              topMargin: 115));
    }, builder: (context, state) {
      return state.maybeWhen(
        initial: () =>
            const LoadingIndicatorWidget(lottieName: 'order_loading'),
        loading: () =>
            const LoadingIndicatorWidget(lottieName: 'order_loading'),
        loaded: (cartModel) => cartModel.isNullOrEmpty
            ? const LoadingIndicatorWidget(lottieName: 'cart_empty')
            : _buildCartLoaded(cartModel.last),
        error: (error) => ErrorView(errorText: error.toString()),
        orElse: () => context.emptySizedHeightBoxLow,
      );
    }));
  }

  Widget _buildCartLoaded(CartModel cartModel) =>
      BlocBuilder<ProductsBloc, ProductsState>(builder: (context, state) {
        return state.maybeWhen(
            loading: () =>
                const LoadingIndicatorWidget(lottieName: 'cart_loading'),
            loaded: (products, productsByCat, isFilterCat) =>
                _buildProdLoaded(context, cartModel, products),
            error: (error) =>
                Center(child: ErrorView(errorText: error.toString())),
            orElse: () => EmptyInfoWidget(
                lottieSrc: 'empty_cart',
                text: LocaleKeys.cart_emptyTitle.locale));
      });

  _buildProdLoaded(BuildContext context, CartModel cartModel,
      List<ProductsModel?> products) {
    double total = 0;
    //*Total Cart Price
    for (var e in cartModel.products) {
      quantityList.value.add(e.quantity);
      total += e.quantity * products[e.productId - 1]!.price!;
    }
    void quantityChangeNotifier(int index) {
      List<int> newQList = List.from(quantityList.value);
      quantityList.value = newQList;
    }

    return ValueListenableBuilder(
        valueListenable: quantityList,
        builder: (context, value, child) => quantityList.value.isEmpty
            ? EmptyInfoWidget(
                lottieSrc: 'empty_cart',
                text: LocaleKeys.cart_emptyTitle.locale)
            : Scaffold(
                body: SingleChildScrollView(
                  primary: true,
                  child: Padding(
                    padding: context.paddingMedium,
                    child: Center(
                      child: Column(
                        children: [
                          Text(LocaleKeys.cart_topTitle.locale,
                              style: Theme.of(context).textTheme.headlineSmall),
                          Padding(padding: context.paddingLow),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: cartModel.products.length,
                            itemBuilder: (context, index) => Dismissible(
                              dismissThresholds: const {
                                DismissDirection.endToStart: 0.6
                              },
                              confirmDismiss: (direction) async =>
                                  await CustomDialogWidget.show(
                                context: context,
                                title: LocaleKeys.cart_alert_title.locale,
                                content: LocaleKeys.cart_alert_content.locale,
                                press: () {
                                  context.router.pop(true);
                                  quantityList.value.removeAt(index);
                                },
                              ),
                              movementDuration: context.durationNormal,
                              direction: DismissDirection.endToStart,
                              background: _slideLeftBackground(),
                              //secondaryBackground: _slideRightBackground(),
                              key: UniqueKey(),
                              child: GestureDetector(
                                onTap: () =>
                                    context.router.push(ProductDetailView(
                                  id: cartModel.products[index].productId,
                                  manager:
                                      NetworkService.instance.networkManager,
                                )),
                                child: Card(
                                  child: Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                          width: context.width * .24,
                                          height: context.height / 8,
                                          child: CachedNetworkImage(
                                            imageUrl: products[cartModel
                                                        .products[index]
                                                        .productId -
                                                    1]!
                                                .image!,
                                            fit: BoxFit.contain,
                                          )),
                                    ),
                                    SizedBox(
                                      width: context.width * .53,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                                products[cartModel
                                                            .products[index]
                                                            .productId -
                                                        1]!
                                                    .title!,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall),
                                          ),
                                          context.emptySizedHeightBoxLow,
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '${products[cartModel.products[index].productId - 1]!.price} ${LocaleKeys.currency.locale}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium,
                                              ),
                                              Row(
                                                children: [
                                                  IconButtonWidget(
                                                      onPress: () {
                                                        quantityChangeNotifier(
                                                            index);
                                                        quantityList.value[
                                                                    index] ==
                                                                1
                                                            ? null
                                                            : quantityList
                                                                    .value[
                                                                index] -= 1;
                                                        quantityChangeNotifier(
                                                            index);
                                                      },
                                                      circleRadius: 14,
                                                      size: 12,
                                                      icon: Icons.remove,
                                                      iColor: ColorConstants
                                                          .myBlack,
                                                      tooltip: 'Remove'),
                                                  Text(
                                                    cartModel.products[index]
                                                        .quantity
                                                        .toString(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium,
                                                  ),
                                                  IconButtonWidget(
                                                      onPress: () =>
                                                          quantityList.value[
                                                              index] += 1,
                                                      circleRadius: 14,
                                                      size: 12,
                                                      icon: Icons.add,
                                                      iColor: ColorConstants
                                                          .myBlack,
                                                      tooltip: 'Add')
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ),
                          const Divider(),
                          Container(
                            color: ColorConstants.myWhite,
                            padding: context.paddingHigh,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(LocaleKeys.cart_subTotal.locale),
                                    const Expanded(child: Divider()),
                                    Text(
                                        '${(total * .82).toStringAsFixed(2)} ${LocaleKeys.currency.locale}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(LocaleKeys.cart_tax.locale),
                                    const Expanded(child: Divider()),
                                    Text(
                                        '${(total * .18).toStringAsFixed(2)} ${LocaleKeys.currency.locale}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          TextFieldWidget(
                              hintText: LocaleKeys.cart_discCode.locale,
                              sIcon: Icons.check_circle_rounded)
                        ],
                      ),
                    ),
                  ),
                ),
                persistentFooterAlignment: AlignmentDirectional.center,
                persistentFooterButtons: [_buildBottomWidget(context, total)]));
  }

  Container _slideLeftBackground() {
    return Container(
      color: ColorConstants.myRed,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.delete_forever_rounded,
              color: ColorConstants.myWhite,
            ),
            context.emptySizedWidthBoxNormal
          ],
        ),
      ),
    );
  }

  Padding _buildBottomWidget(BuildContext context, double total) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * .02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.cart_price.locale,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  '${total.toStringAsFixed(2)} ${LocaleKeys.currency.locale}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            EButtonWidget(
                text: LocaleKeys.cart_buttonText.locale,
                width: 150,
                onPress: () {
                  context.read<CartBloc>().add(CartEvent.checkout(
                      checkoutState: CheckoutStateEnum.delivery));
                  context.router.push(const Checkout());
                })
          ],
        ));
  }
}
