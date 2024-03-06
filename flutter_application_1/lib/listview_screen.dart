import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listviewScreen extends StatefulWidget {
  @override
  State<listviewScreen> createState() => _listviewScreenState();
}

class _listviewScreenState extends State<listviewScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: const Center(child: Text('Entry A')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: const Center(child: Text('Entry B')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: const Center(child: Text('Entry C')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildview2(),
            SizedBox(
              height: 10,
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ElevatedButton(
                     onPressed: () {
                        setState(() {
                          CountItems++;
                          entries.add(CountItems.toString());
                          colorCodes.add(400-20*CountItems);

                        });
                     },

                     child: Text('Add to List')),
                 SizedBox(width: 10,),
                 ElevatedButton(
                     onPressed: () {
                       setState(() {
                         if(CountItems!=0) {
                           CountItems--;
                           entries.removeAt(0);
                           colorCodes.removeAt(0);

                         };

                       });
                     },
                     child: Text('Back to screen')),
               ],
    ),


            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to screen')),
          ],
        ),
      ),
    );
  }
}
 int CountItems=3;
 List<String> entries = <String>['A', 'B', 'C'];
 List<int> colorCodes = <int>[600, 500, 400];
Widget buildview2() {

  return Container(
    height: 400,
    child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.green[colorCodes[index]],
            child: Center(child: Text('ITem ${entries[index]}')),
          );
        }),
  );
}
