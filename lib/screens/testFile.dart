import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class testPage extends StatefulWidget {
  const testPage({super.key});

  @override
  State<testPage> createState() => _testPageState();
}

class _testPageState extends State<testPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing Page!"),
      ),
      body: ListView(
        // child:
        children: [
          Image.asset('assets/images/img.jpg'),
          SizedBox(
            height: 20.0,
          ),
          Image.asset('assets/images/imageWeatherInfo.jpg'),
        ],
      ),
    );
  }
}
