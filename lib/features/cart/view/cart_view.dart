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
  @override
  void initState() {
    super.initState();
  }

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
        initial: () => EmptyInfoWidget(
            lottieSrc: 'empty_cart', text: LocaleKeys.cart_emptyTitle.locale),
        loading: () =>
            const LoadingIndicatorWidget(lottieName: 'order_loading'),
        loaded: (cartModel) => cartModel.last.products.isNullOrEmpty
            ? EmptyInfoWidget(
                lottieSrc: 'empty_cart',
                text: LocaleKeys.cart_emptyTitle.locale)
            : _buildCartLoaded(cartModel.last),
        error: (error) => ErrorView(errorText: error.toString()),
        orElse: () => EmptyInfoWidget(
            lottieSrc: 'empty_cart', text: LocaleKeys.cart_emptyTitle.locale),
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
      total += e.quantity * products[e.productId - 1]!.price;
    }

    return Scaffold(
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
                          context.read<CartBloc>().add(CartEvent.remove(
                              cartModel: cartModel,
                              productId: cartModel.products[index].productId));
                          context.router.pop(true);
                        },
                      ),
                      movementDuration: context.durationNormal,
                      direction: DismissDirection.endToStart,
                      background: _slideLeftBackground(),
                      //secondaryBackground: _slideRightBackground(),
                      key: UniqueKey(),
                      child: GestureDetector(
                        onTap: () => context.router.push(ProductDetailView(
                          id: cartModel.products[index].productId,
                          manager: NetworkService.instance.networkManager,
                        )),
                        child:
                            _productCard(context, products, cartModel, index),
                      ),
                    ),
                  ),
                  const Divider(),
                  _productTaxContainer(context, total),
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
        persistentFooterButtons: [_buildBottomWidget(context, total)]);
  }

  Container _productTaxContainer(BuildContext context, double total) {
    return Container(
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
                  style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
          Row(
            children: [
              Text(LocaleKeys.cart_tax.locale),
              const Expanded(child: Divider()),
              Text(
                  '${(total * .18).toStringAsFixed(2)} ${LocaleKeys.currency.locale}',
                  style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
        ],
      ),
    );
  }

  Card _productCard(BuildContext context, List<ProductsModel?> products,
      CartModel cartModel, int index) {
    return Card(
      child: Row(children: [
        _productImage(context, products, cartModel, index),
        SizedBox(
          width: context.width * .53,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _productTitle(products, cartModel, index, context),
              context.emptySizedHeightBoxLow,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${products[cartModel.products[index].productId - 1]!.price} ${LocaleKeys.currency.locale}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Row(
                    children: [
                      _decQtyButton(cartModel, index, context),
                      Text(
                        cartModel.products[index].quantity.toString(),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      _incQtyButton(context, cartModel, index)
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Padding _productImage(BuildContext context, List<ProductsModel?> products,
      CartModel cartModel, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          width: context.width * .24,
          height: context.height / 8,
          child: CachedNetworkImage(
            imageUrl: products[cartModel.products[index].productId - 1]!.image,
            fit: BoxFit.contain,
          )),
    );
  }

  Align _productTitle(List<ProductsModel?> products, CartModel cartModel,
      int index, BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(products[cartModel.products[index].productId - 1]!.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.bodySmall),
    );
  }

  IconButtonWidget _incQtyButton(
      BuildContext context, CartModel cartModel, int index) {
    return IconButtonWidget(
        onPress: () {
          context.read<CartBloc>().add(CartEvent.changeQty(
              cartModel: cartModel,
              quantity: cartModel.products[index].quantity + 1,
              productId: cartModel.products[index].productId));
        },
        circleRadius: 14,
        size: 12,
        icon: Icons.add,
        iColor: ColorConstants.myBlack,
        tooltip: 'Add');
  }

  IconButtonWidget _decQtyButton(
      CartModel cartModel, int index, BuildContext context) {
    return IconButtonWidget(
        onPress: () {
          cartModel.products[index].quantity == 1
              ? null
              : context.read<CartBloc>().add(CartEvent.changeQty(
                  cartModel: cartModel,
                  quantity: cartModel.products[index].quantity - 1,
                  productId: cartModel.products[index].productId));
        },
        circleRadius: 14,
        size: 12,
        icon: Icons.remove,
        iColor: ColorConstants.myBlack,
        tooltip: 'Remove');
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
