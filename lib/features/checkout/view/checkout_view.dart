import 'package:flutter/material.dart';
import 'package:linda_wedding_ecommerce/features/checkout/view/widget/card_widget.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({super.key});

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  @override
  Widget build(BuildContext context) {
    return const CardWidget();
  }
}
