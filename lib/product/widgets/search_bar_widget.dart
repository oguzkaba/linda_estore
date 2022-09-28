import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/constants/app/application_constants.dart';
import 'package:linda_wedding_ecommerce/core/constants/app/colors_constants.dart';
import 'package:linda_wedding_ecommerce/features/product/model/product_model.dart';
import 'package:linda_wedding_ecommerce/product/widgets/export_widget.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  bool isChange = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Autocomplete<ProductModel>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text == '') return [];
          return ApplicationConstants.productOptions
              .where((ProductModel product) => product.title!
                  .toLowerCase()
                  .contains(textEditingValue.text.toLowerCase()))
              .toList();
        },
        displayStringForOption: (ProductModel option) => option.image!,
        fieldViewBuilder: (BuildContext context,
            TextEditingController fieldTextEditingController,
            FocusNode fieldFocusNode,
            VoidCallback onFieldSubmitted) {
          return TextFieldWidget(
            onChange: (val) {
              setState(() {
                fieldTextEditingController.text = val;
                if (fieldTextEditingController.text.isNotNullOrNoEmpty) {
                  isChange = true;
                } else {
                  isChange = false;
                }
              });
            },
            suffixOnPress: () {
              setState(() {
                fieldTextEditingController.text = "";
              });
            },
            hintStyle: const TextStyle(fontSize: 11),
            hintText: "Search product, category, brand...",
            pIcon: isChange ? null : Icons.manage_search_outlined,
            sIcon: isChange ? Icons.cancel_rounded : null,
            fieldTextEditingController: fieldTextEditingController,
            fieldFocusNode: fieldFocusNode,
          );
        },
        onSelected: (ProductModel selection) {
          print('Selected: ${selection.title}');
        },
        optionsViewBuilder: (BuildContext context,
            AutocompleteOnSelected<ProductModel> onSelected,
            Iterable<ProductModel> options) {
          return Material(
            animationDuration: context.durationLow,
            elevation: 2,
            child: Container(
              margin: EdgeInsets.fromLTRB(
                  5, 5, context.width * .04, context.height * .07),
              width: 300,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  //borderRadius: context.highBorderRadius,
                  color: ColorConstants.myWhite),
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(10.0),
                itemCount: options.length,
                itemBuilder: (BuildContext context, int index) {
                  final ProductModel option = options.elementAt(index);

                  return GestureDetector(
                    onTap: () {
                      onSelected(option);
                    },
                    child: ListTile(
                      title: Text(option.title!,
                          style: TextStyle(
                              color: ColorConstants.primaryColor,
                              fontSize: 12)),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
