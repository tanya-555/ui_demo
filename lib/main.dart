import 'package:flutter/material.dart';
import 'package:ui_demo/common_widgets/custom_slider.dart';
import 'package:ui_demo/common_widgets/linear_progress_indicator.dart';
import 'package:ui_demo/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  void _gotoSecondScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) {
        return SecondScreen();
      }
    ));
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent,
      ),
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Widgets Demo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(25.0),
                      child: CustomIndicator(maxLimit: 100, currentValue: 60, width: 150.0, lineHeight: 8.0),
                    ),
                    Container(
                      padding: EdgeInsets.all(25.0),
                      child: CustomIndicator(maxLimit: 100, currentValue: 20, width: 150.0, lineHeight: 8.0),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: CustomSlider(currentLimitLabel: 'Current Limit',currentLimitValue: 12000,newLimitLabel: 'New Limit',
                      newLimitValue: 18000, minValue: 0, maxValue: 20000, width: 50),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: ElevatedButton(
                    child: Text('Next'),
                    onPressed: () {
                      _gotoSecondScreen(context);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      )
    );
  }
}