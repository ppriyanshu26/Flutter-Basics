import 'package:flutter/material.dart';
import 'package:font/ui_helper/util.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.red),
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
        )
      ),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Text 1', style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.red,),),
            Text('Text 2', style: Theme.of(context).textTheme.headlineMedium,),
            Text('Text 3', style: Theme.of(context).textTheme.headlineLarge,),
            Text('Text 4', style: myTextStyle17(tc: Colors.green),),
            Text('Text 5', style: TextStyle(fontFamily: 'MyFont1', fontSize: 21,)),
            Text('Text 6', style: TextStyle(fontFamily: 'MyFont2', fontSize: 21,)),
          ],
        ),
      ),
    );
  }
}
