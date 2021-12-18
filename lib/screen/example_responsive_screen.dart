import 'package:flutter/material.dart';
import 'package:responsive_base/screen/components/example_gridview.dart.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Responsive GridView'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: Column(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ResponsiveGridView(),
            )
          ],
        ),
      ),
    );
  }
}
