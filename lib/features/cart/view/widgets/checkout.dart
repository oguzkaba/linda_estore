import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../product/widgets/iconbutton_widget.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text("Checkout", style: TextStyle(color: ColorConstants.myBlack)),
          leading: Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButtonWidget(
                size: 16,
                onPress: () => context.router.pop(),
                icon: Icons.chevron_left_rounded,
                iColor: ColorConstants.myMediumGrey,
                tooltip: "Back"),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true),
      body: Stepper(
          currentStep: 0,
          elevation: 1,
          type: StepperType.horizontal,
          steps: [
            Step(
                title: const Text(""),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildListTile(context,
                        title: "Standart Delivery",
                        subTitle:
                            "Order will be delivered between 3-5 business days",
                        selected: true),
                    _buildListTile(context,
                        title: "Next Day Delivery",
                        subTitle:
                            "Order will be delivered between 3-5 business days",
                        selected: false),
                    _buildListTile(context,
                        title: "Nominated Delivery",
                        subTitle:
                            "Order will be delivered between 3-5 business days",
                        selected: false)
                  ],
                ),
                isActive: true,
                label: const Text("Delivery")),
            const Step(
                title: Text(""),
                content: Text("2"),
                isActive: true,
                label: Text("Adress")),
            const Step(
                title: Text(""), content: Text("3"), label: Text("Payment")),
          ],
          onStepContinue: () => context.router.pop()),
    );
  }

  Widget _buildListTile(BuildContext context,
      {required String title,
      required String subTitle,
      required bool selected}) {
    return Padding(
      padding: context.verticalPaddingLow,
      child: ListTile(
        selected: selected,
        selectedColor: ColorConstants.myBlack,
        tileColor: ColorConstants.myLightGrey.withOpacity(.2),
        selectedTileColor: ColorConstants.secondaryColor.withOpacity(.2),
        shape: selected
            ? RoundedRectangleBorder(
                side: BorderSide(color: ColorConstants.primaryColor),
                borderRadius: BorderRadius.circular(10))
            : null,
        contentPadding: context.paddingLow,
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subTitle),
        isThreeLine: true,
        trailing: Radio(
          value: selected ? 1 : 0,
          groupValue: 1,
          activeColor: ColorConstants.primaryColor,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
