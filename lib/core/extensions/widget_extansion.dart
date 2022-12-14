import 'package:flutter/widgets.dart';

extension WidgetExtansion on Widget {
  Widget get toSliver => SliverToBoxAdapter(child: this);
}
