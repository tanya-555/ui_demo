import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CustomIndicator extends StatelessWidget {

  final double maxLimit;
  final double currentValue;
  final double width;
  final double lineHeight;

  CustomIndicator({@required this.maxLimit, @required this.currentValue, @required this.width, @required this.lineHeight});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      percent: currentValue/maxLimit,
      progressColor: Theme.of(context).primaryColor,
      width: width,
      lineHeight: lineHeight,
    );
  }
}