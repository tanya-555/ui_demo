import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_demo/common_widgets/shimmer_list_view.dart';
import 'package:ui_demo/dummy_data.dart';
import 'package:ui_demo/shimmer_item.dart';

class SecondScreen extends StatefulWidget {
  
  @override
  _SecondScreenState createState() {
    return _SecondScreenState();
  }
}

class _SecondScreenState extends State<SecondScreen> {
  
  bool _isInit = false;
  List<String> _data = DummyList().getDummyList();
  
  Future<void> _loadData() async {
    await Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        _isInit = true;
      });
    });
  }
  
  @override
  void initState() {
    super.initState();
    _loadData();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shimmer Demo'),
      ),
      body:
      ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context, pos) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(_data[pos], style: TextStyle(
                fontSize: 15.0,
              ),),
            ),
          );
        }
      ),
    );
  }
}