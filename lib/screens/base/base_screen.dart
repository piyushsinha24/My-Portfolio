import 'package:flutter/material.dart';
import 'package:portfolio/widgets/responsive_layout/responsive_layout.dart';

abstract class BaseScreenLayout<T extends StatefulWidget> extends State<T> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: buildLargeLayout(context),
      smallScreen: buildSmallLayout(context),
    );
  }

  /// Build your large layout
  Widget buildLargeLayout(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Large layout"),
      ),
    );
  }

  /// Build your small layout
  Widget buildSmallLayout(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Small layout"),
      ),
    );
  }
}
