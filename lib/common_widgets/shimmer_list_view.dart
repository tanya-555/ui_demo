import 'package:flutter/material.dart';

class ShimmerListView extends StatelessWidget {
  const ShimmerListView({
    Key key,
    @required this.itemCount,
    @required this.itemBuilder,
  }) : super(key: key);

  final int itemCount;
  final Widget itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
        itemCount: itemCount,
        itemBuilder: (BuildContext ctxt, int index) {
          return itemBuilder;
        },
      ),
    );
  }
}