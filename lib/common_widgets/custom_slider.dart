import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  final String currentLimitLabel;
  final double currentLimitValue;
  final String newLimitLabel;
  final double newLimitValue;
  final double minValue;
  final double maxValue;

  CustomSlider({@required this.currentLimitLabel, @required this.currentLimitValue,
    @required this.newLimitLabel, @required this.newLimitValue, @required this.minValue, @required this.maxValue});

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {

  String newLimit;

  @override
  void initState() {
    newLimit = widget.newLimitValue.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
          child: Row(
            children: [
              Text(
                widget.currentLimitLabel + ' ' + widget.currentLimitValue.toInt().toString(),
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey.shade600,
                ),
              ),
              Expanded(
                child: Container(

                ),
              ),
              Text(
                widget.newLimitLabel + ' ',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12.0,
                ),
              ),
              Text(
                newLimit ?? widget.newLimitValue.toInt().toString(),
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.grey.shade600,
              inactiveTrackColor: Colors.grey.shade300,
              thumbColor: Colors.white,
              trackHeight: 4.0,
              trackShape: RectangularSliderTrackShape(),
            ),
            child: Slider(
              min: widget.minValue,
              max: widget.maxValue,
              value: double.parse(newLimit) ?? widget.currentLimitValue,
              onChanged: (value) {
                setState(() {
                  newLimit = value.toInt().toString();
                });
              },
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.minValue.toInt().toString(),
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 10.0,
                ),
              ),
              Text(
                widget.maxValue.toInt().toString(),
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}