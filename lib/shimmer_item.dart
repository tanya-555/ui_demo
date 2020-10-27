import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerItem extends StatelessWidget {
  const ShimmerItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Shimmer.fromColors(
            baseColor: Colors.black12,
            highlightColor: Color(0Xf0f0f0),
            child: Column(
              children: [
                Shimmer_Row(
                  height: 2,
                  radius: 2,
                  width: 900,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                  child: Shimmer_Row(
                    height: 20,
                    radius: 2,
                    width: 200,
                  ),
                ),
                Shimmer_Row(
                  height: 2,
                  radius: 2,
                  width: 900,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Shimmer_Row extends StatelessWidget {
  final double height;
  final double radius;
  final double width;

  const Shimmer_Row(
      {
        this.height,
        this.radius,
        this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                color: Colors.white,
              ),
              height: height,
              width: width,
            ),
          )
        ),
      ],
    );
  }
}
