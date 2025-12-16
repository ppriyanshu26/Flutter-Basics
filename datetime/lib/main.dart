import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(DateFormat('yMMMMEEEEd').format(time), style: TextStyle(fontSize: 21),),
              Text("Current Time: ${DateFormat('jms').format(time)}", style: TextStyle(fontSize: 21),),
              ElevatedButton(
                  onPressed: (){
                    setState(() {

                    });
                  },
                  child: Text("Current Time")
              ),
              Text("Select Date & Time", style: TextStyle(fontSize: 21),),
              ElevatedButton(onPressed: () async {
                DateTime? date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2025),
                    lastDate: DateTime(2026)
                );
                if (date != null) {
                  print('Date selected: ${date.day}');
                }else{
                  print('Date not selected');
                }
              }, child: Text('Show Date')),
              ElevatedButton(onPressed: () async {
                TimeOfDay? Time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.dial
                );
                if (Time != null) {
                  print('Time selected: ${Time.minute}');
                }else{
                  print('Time not selected');
                }
              }, child: Text('Show Time'))
            ],
          ),
        ),
      )
    );
  }
}
