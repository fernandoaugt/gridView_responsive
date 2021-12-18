import 'package:flutter/material.dart';
import 'package:responsive_base/responsive/responsive_base.dart';
import 'package:responsive_base/screen/components/example_card.dart';

class ResponsiveGridView extends StatelessWidget {
  const ResponsiveGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return ResponsiveBase(
        mobileBase: GridViewBase(
          childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
          crossAxisCount: _size.width < 650 ? 2 : 4,
        ),
        desktopBase: GridViewBase(
          childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          crossAxisCount: crossAxisCount,
        ),
        tabletBase: GridViewBase(
          childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          crossAxisCount: crossAxisCount,
        ));
  }
}

class GridViewBase extends StatelessWidget {
  const GridViewBase({
    Key? key,
    required this.crossAxisCount,
    required this.childAspectRatio,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: childAspectRatio,
        ),
        itemBuilder: (_, index) {
          return const ExampleCard();
        });
  }
}
