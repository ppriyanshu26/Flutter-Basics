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
      theme: ThemeData(),
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
        width: 300,
        height: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('A', style: TextStyle(fontSize: 25)),
                Text('B', style: TextStyle(fontSize: 25)),
                Text('C', style: TextStyle(fontSize: 25)),
                Text('D', style: TextStyle(fontSize: 25)),
                Text('E', style: TextStyle(fontSize: 25))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('A', style: TextStyle(fontSize: 25)),
                Text('B', style: TextStyle(fontSize: 25)),
                Text('C', style: TextStyle(fontSize: 25)),
                Text('D', style: TextStyle(fontSize: 25)),
                Text('E', style: TextStyle(fontSize: 25))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('A', style: TextStyle(fontSize: 25)),
                Text('B', style: TextStyle(fontSize: 25)),
                Text('C', style: TextStyle(fontSize: 25)),
                Text('D', style: TextStyle(fontSize: 25)),
                Text('E', style: TextStyle(fontSize: 25))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('A', style: TextStyle(fontSize: 25)),
                Text('B', style: TextStyle(fontSize: 25)),
                Text('C', style: TextStyle(fontSize: 25)),
                Text('D', style: TextStyle(fontSize: 25)),
                Text('E', style: TextStyle(fontSize: 25))
              ],
            ),
          ],
        ),
      )
    );
  }
}
