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
          padding: EdgeInsets.all(20),
          child: Shimmer.fromColors(
            baseColor: Colors.black12,
            highlightColor: Color(0Xf0f0f0),
            child: Column(
              children: <Widget>[
                Shimmer_Row(
                  firstFlex: 2,
                  secondFlex: 1,
                  thirdFlex: 1,
                  height: 30,
                  radius: 2,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//each row of the shimmer item which has a 3 container's who's flex value can be changes
class Shimmer_Row extends StatelessWidget {
  final int firstFlex;
  final int secondFlex;
  final int thirdFlex;
  final double height;
  final double radius;

  const Shimmer_Row(
      {this.firstFlex,
        this.secondFlex,
        this.thirdFlex,
        this.height,
        this.radius});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          flex: firstFlex,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              color: Colors.white,
            ),
            height: height,
          ),
        ),
        Flexible(
          flex: secondFlex,
          child: Container(
            height: height,
          ),
        ),
        Flexible(
          flex: thirdFlex,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              color: Colors.white,
            ),
            height: height,
          ),
        ),
      ],
    );
  }
}
