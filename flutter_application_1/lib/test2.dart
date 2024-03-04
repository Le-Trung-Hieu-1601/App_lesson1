import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myTestApp());
}

class myTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(theme: ThemeData(
      primarySwatch: Colors.green,
    ),
        home: MyTestHomePage());
  }
}

class MyTestHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('my test'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('hieu dep trai'),
          ElevatedButton(
              onPressed: () {
                print('nut da dc bam hieu ');
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('nut da duoc bam')));
              },
              child: Text("click me"))
        ],
      )
      ),
    );
  }
}
