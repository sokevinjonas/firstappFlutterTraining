import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(
  theme: ThemeData(
    colorSchemeSeed: Colors.green
  ),
  home: const HomePage(),
));
}

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
        elevation: 0,
      ),
      body: const Center(
        child: Text("Bienvenu"),
      ),
    );
  }
}