import 'package:flutter/material.dart';

class ResponsiveGridList extends StatelessWidget {
  const ResponsiveGridList({
    Key? key,
    required this.desiredItemWidth,
    required this.minSpacing,
    required this.children,
  }) : super(key: key);

  final double desiredItemWidth;
  final double minSpacing;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    int crossAxisCount =
        (MediaQuery.of(context).size.width / (desiredItemWidth + minSpacing))
            .floor();

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: minSpacing,
        mainAxisSpacing: minSpacing,
      ),
      itemCount: children.length,
      itemBuilder: (context, index) {
        return children[index];
      },
    );
  }
}
