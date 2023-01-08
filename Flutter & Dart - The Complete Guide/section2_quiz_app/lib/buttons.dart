import 'package:flutter/material.dart';


class MyWidget extends StatelessWidget {
  const MyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Center(
          child: Column(children: <Widget>[
            //1. ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                onPrimary: Colors.white,
              ),
              child: Text('A Raised Button'),
              onPressed: () {
                print('Pressed raised button');
              },
            ),
            TextButton(
              child: Text('A Flat Button'),
              style: TextButton.styleFrom(primary: Colors.orange),
              onPressed: () {
                print('Pressed flat button');
              },
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.orange, 
                side:BorderSide(color: Colors.orange),
            ),
              child: Text('An Outline Button'),
              onPressed: () {
                print('Pressed outline button');
              },
            ),
          ]
          ),
          )
      ),

    );
  }
}

