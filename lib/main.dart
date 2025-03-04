import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(
  theme: ThemeData(
    colorSchemeSeed: Colors.blue
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
  Color bg = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        title: const Text("App Bar"),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(40),
        children: [
          ElevatedButton(
            onPressed: (){
              setState(() {
                bg = Colors.orange;
              });
            },
            style: ElevatedButton.styleFrom(
             backgroundColor: Colors.orange
            ),
            child: const Text("Button avec Elevation"),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
              onPressed: (){
                setState(() {
                  bg = Colors.red;
                });
              },
              child: const Text("Button avec contoure")
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.green
            ),
            child: const Text("Button avec Texte"),
            onPressed: (){
              setState(() {
                bg = Colors.green;
              });
            },
          ),
          IconButton(
            style:  IconButton.styleFrom(
              backgroundColor: Colors.yellow
            ),
              onPressed: (){
                setState(() {
                  bg = Colors.yellow;
                });
              },
              icon: const Icon(Icons.home))
        ],
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.add),
        ),
    );
  }
}