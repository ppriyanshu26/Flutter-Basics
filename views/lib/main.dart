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
      debugShowCheckedModeBanner: false,
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

    var arr = ['Alpha', 'Bravo', 'Charlie', 'Delta', 'Echo', 'F', 'G', 'H'];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         SingleChildScrollView(
      //           scrollDirection: Axis.horizontal,
      //           child: Row(
      //             children: [
      //               Container(
      //                 margin: EdgeInsets.all(14),
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.red,
      //               ),
      //               Container(
      //                 margin: EdgeInsets.all(14),
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.redAccent,
      //               ),
      //               Container(
      //                 margin: EdgeInsets.all(14),
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.orange,
      //               ),
      //               Container(
      //                 margin: EdgeInsets.all(14),
      //                 height: 200,
      //                 width: 200,
      //                 color: Colors.orangeAccent,
      //               ),
      //             ],
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 200,
      //           color: Colors.yellow,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 200,
      //           color: Colors.yellow,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 200,
      //           color: Colors.yellow,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 200,
      //           color: Colors.yellow,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 200,
      //           color: Colors.yellow,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 200,
      //           color: Colors.yellow,
      //         ),
      //       ],
      //     ),
      //   )
      // )
      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   reverse: true,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(18.0),
      //       child: Text('One', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(18.0),
      //       child: Text('Two', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(18.0),
      //       child: Text('Three', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(18.0),
      //       child: Text('Four', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(18.0),
      //       child: Text('Five', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
      //     ),
      //  ],
      // ),
      body : ListView.separated(itemBuilder: (context, index) {
        return Text(arr[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);
      }, itemCount: arr.length,
        //scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index){
        return Divider(height: 10,thickness: 4,);
        },
      )
    );
  }
}
