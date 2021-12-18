import 'package:flutter/material.dart';

class ResponsiveBase extends StatelessWidget {
  final Widget mobileBase;
  final Widget? tabletBase;
  final Widget desktopBase;

  const ResponsiveBase({
    Key? key,
    required this.mobileBase,
    this.tabletBase,
    required this.desktopBase,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1110) {
      return desktopBase;
    } else if (_size.width >= 850 && tabletBase != null) {
      return tabletBase!;
    } else {
      return mobileBase;
    }
  }
}
