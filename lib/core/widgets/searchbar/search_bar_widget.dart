import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../features/product/model/products/products_model.dart';
import '../../constants/app/colors_constants.dart';
import '../../extensions/string_extansion.dart';
import '../../init/lang/locale_keys.g.dart';
import '../../init/network/service/network_service.dart';
import '../../init/routes/routes.gr.dart';
import '../textfield/textfield_widget.dart';

class SearchBarWidget extends StatefulWidget {
  final List<ProductsModel> products;
  const SearchBarWidget({super.key, required this.products});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  bool _isChange = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Autocomplete<ProductsModel>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text == '') return [];
          return widget.products
              .map((e) => e)
              .toList()
              .where((ProductsModel product) => product.title
                  .toLowerCase()
                  .contains(textEditingValue.text.toLowerCase()))
              .toList();
        },
        displayStringForOption: (ProductsModel option) => option.title,
        fieldViewBuilder: (BuildContext context,
                TextEditingController fieldTextEditingController,
                FocusNode fieldFocusNode,
                VoidCallback onFieldSubmitted) =>
            TextFieldWidget(
          //*TODO: Add function
          onSubmitted: (val) => null,
          onChange: (val) => _searcTextChanged(fieldTextEditingController),
          suffixOnPress: () => _closeSearch(fieldTextEditingController),
          hintStyle: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: ColorConstants.myMediumGrey.withOpacity(.4)),
          hintText: LocaleKeys.home_search.locale,
          pIcon: _isChange ? null : Icons.manage_search_outlined,
          sIcon: _isChange ? Icons.cancel_rounded : null,
          controller: fieldTextEditingController,
          fieldFocusNode: fieldFocusNode,
        ),
        onSelected: (ProductsModel selection) {
          _selectedProduct(context, selection);
        },
        optionsViewBuilder: (BuildContext context,
            AutocompleteOnSelected<ProductsModel> onSelected,
            Iterable<ProductsModel> options) {
          return Material(
            animationDuration: context.durationLow,
            child: Container(
              margin: EdgeInsets.fromLTRB(
                  5, 5, context.width * .11, context.height * .07),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  //borderRadius: context.highBorderRadius,
                  color: ColorConstants.myWhite),
              child: _buildList(options, onSelected),
            ),
          );
        },
      ),
    );
  }

  ListView _buildList(Iterable<ProductsModel> options,
      AutocompleteOnSelected<ProductsModel> onSelected) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(10.0),
      itemCount: options.length,
      itemBuilder: (BuildContext context, int index) {
        final ProductsModel option = options.elementAt(index);

        return GestureDetector(
          onTap: () => onSelected(option),
          child: ListTile(
            leading: CachedNetworkImage(
                imageUrl: option.image,
                fit: BoxFit.contain,
                width: context.width / 6),
            isThreeLine: false,
            trailing: Text("${option.price} ₺",
                style: Theme.of(context).textTheme.bodySmall),
            subtitle: Text(option.description, overflow: TextOverflow.ellipsis),
            title: Text(option.title,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall),
          ),
        );
      },
    );
  }

  void _selectedProduct(BuildContext context, ProductsModel selection) =>
      context.router.push(ProductDetailView(
          id: selection.id, manager: NetworkService.instance.networkManager));

  void _searcTextChanged(TextEditingController fieldTextEditingController) =>
      setState(() {
        if (fieldTextEditingController.text.isNotNullOrNoEmpty) {
          _isChange = true;
        } else {
          _isChange = false;
        }
      });

  void _closeSearch(TextEditingController fieldTextEditingController) =>
      setState(() {
        fieldTextEditingController.text = "";
        _isChange = false;
      });
}
