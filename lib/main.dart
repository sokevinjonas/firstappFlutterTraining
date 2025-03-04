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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, //customer la couleur sans la modifier
        leading: const Icon(Icons.menu),
        title: const Text("App Bar"),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search)
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.more_vert))
        ],
      ),
      body: const Center(
        child: Text("Bienvenu"),
      ),
    );
  }
}