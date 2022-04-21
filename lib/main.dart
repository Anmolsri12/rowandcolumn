import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}



class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
TextEditingController _user = TextEditingController();
TextEditingController _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row And Column"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text("Please Login"),
              Row(
                children: [
                  Text("Ueser Name"),
                  Expanded(child: TextField(controller: _user,),)
                ],
              ),
              Row(
                children: [
                  Text("Ueser Name"),
                  Expanded(child: TextField(controller: _pass,),)
            ],
            ),
            Padding(padding: EdgeInsets.all(14.0),
            child: ElevatedButton(onPressed: () => print('Login ${_user.text}'),child: Text("Click me"),
            ),
            ),
            
            ],)
        )
      ),
    );
  }
}