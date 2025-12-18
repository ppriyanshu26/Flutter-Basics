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
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
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
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 5,
                shadowColor: Colors.yellowAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Enter Name"),
                ),
              ),
              Container(height: 10,),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: emailText,
                  // enabled: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                        width: 2,
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        )
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      )
                    ),
                    suffixText: "Username exists",
                    suffixIcon: IconButton(
                        onPressed: () {

                        },
                        icon: Icon(Icons.remove_red_eye, color: Colors.red,)
                    ),
                    prefixIcon: Icon(Icons.email_outlined),

                  ),
                ),
              ),
              Container(height: 10,),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: passText,
                  obscureText: true,
                  obscuringCharacter: "%",
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "Enter PIN",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                          )
                      )
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    String uname = emailText.text;
                    String passw = passText.text;
                    print("Email: $uname");
                    print("Password: $passw");
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      )
    );
  }
}
