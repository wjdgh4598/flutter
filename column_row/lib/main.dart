import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'column_row',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: MySafeArea()
    );
  }
}

class MySafeArea extends StatelessWidget {
  const MySafeArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),

            SizedBox(
              width: 80.0,
            ),

            Container(
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),

          ],
        )
    );
  }
}


