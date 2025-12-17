import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        // width: double.infinity,
        // height: double.infinity,
        child: Center(
          child: Container(
            // width: 150,
            // height: 150,
            decoration: BoxDecoration(
              // color: Colors.blueGrey,
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.all(Radius.circular(10),),
              border: Border.all(width: 2, color: Colors.black),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 10,
                  color: Colors.yellow,
                ),
              ],
            ),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/cover.jpg'),
            // radius: 100,
            minRadius: 50,
            maxRadius: 150,
            child: Text('Hello', style: TextStyle(color: Colors.white),),
          ),
          ),
        ),
        ),
    );
  }
}
