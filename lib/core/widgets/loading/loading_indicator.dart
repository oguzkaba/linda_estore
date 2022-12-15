// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:lottie/lottie.dart';

import '../../constants/app/colors_constants.dart';
import '../../extensions/asset_extansion.dart';
import '../../init/themes/cubit/theme_cubit.dart';

class LoadingIndicatorWidget extends StatelessWidget {
  final String lottieName;
  final double? height;
  const LoadingIndicatorWidget(
      {Key? key, required this.lottieName, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Lottie.asset(lottieName.toLottie, height: height ?? 300)));
  }
}
