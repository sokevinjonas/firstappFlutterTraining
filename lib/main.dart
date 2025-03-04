import 'package:flutter/material.dart';

void main(){
runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<StatefulWidget> createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Bienvenu Sur Flutter"),
      ),
    );
  }
}