import 'package:flutter/material.dart';

/// Flutter code sample for [Expanded].

void main() => runApp(const ExpandedApp());

class ExpandedApp extends StatelessWidget {
  const ExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expanded Column Sample'),
        ),
        body: SafeArea(child: const ExpandedExample()),
      ),
    );
  }
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: <Widget>[
            BuildStack(),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Expanded(

              child: Container(
                color: Colors.amber,
                width: 100,

              ),
            ), Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,

                    ),
                  ),
                  Container(
                    child: Container(
                      color: Colors.grey,
                      width: 30,
                      height: 100,

                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      color: Colors.pink,

                      height: 100,

                    ),
                  )

                ],
              ),


            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),

          ],
        ),
      ),
    );
  }
}
Widget BuildStack(){
  return Stack(
    clipBehavior: Clip.antiAlias,
    children: <Widget>[
      Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
      Container(
        width: 90,
        height: 90,
        color: Colors.green,
      ),
      Positioned(
        right: 0,
        child: Container(
          width: 80,
          height: 80,
          color: Colors.blue,
        ),
      ),
    ],
  );

}

