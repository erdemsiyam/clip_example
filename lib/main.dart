import 'package:clip_example/my_custom_clip_path1.dart';
import 'package:clip_example/my_custom_clip_path2.dart';
import 'package:clip_example/my_custom_clip_path3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: myCustomClipper3(),
      ),
    );
  }

  Widget myClipRRect() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          topRight: Radius.elliptical(200, 100),
        ),
        child: Container(
          color: Colors.blue,
          width: 200,
          height: 200,
        ),
      ),
    );
  }

  Widget myCustomClipper1() {
    return Center(
      child: ClipPath(
        clipper: MyCustomClipper1(),
        child: Container(
          color: Colors.blue,
          width: double.infinity, // telefon tüm X uzunluğu
          height: 200,
        ),
      ),
    );
  }

  Widget myCustomClipper2() {
    return ClipPath(
      clipper: MyCustomClipper2(),
      child: Container(
        color: Colors.blue,
        width: double.infinity, // telefon tüm X uzunluğu
        height: 200,
      ),
    );
  }

  Widget myCustomClipper3() {
    return ClipPath(
      clipper: MyCustomClipper3(),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: [0.3, 0.6],
            colors: [
              Colors.blue[400],
              Colors.blue[300],
            ],
          ),
        ),
        width: double.infinity, // telefon tüm X uzunluğu
        height: 200,
      ),
    );
  }
}
