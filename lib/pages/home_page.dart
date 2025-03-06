import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<StatefulWidget> createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyHomePage>{
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field"),
        elevation: 10,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(email),
          TextField(
            decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Entrer votre email",
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
              helperText: "Votre e-mail doit contenir @"
            ),
            onChanged: (value){
              setState(() {
                email = value;
              });
            },
          )
        ],
      )
    );
  }
}