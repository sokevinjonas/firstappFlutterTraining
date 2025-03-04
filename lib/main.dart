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
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                color: Colors.grey
              ),
                child: Text("Menu"),
            ),
            ListTile(
              leading: const Icon(Icons.settings), //quelques chose qui vient avant
              title: const Text("Parametre"),
              subtitle: const Text("Page de Configuration"),
              trailing: const Icon(Icons.chevron_right),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.account_box),
              title: const Text("Profile"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text("Help"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.close),
              title: const Text("Quitter"),
              onTap: (){},
            )
          ],
        ),
      ),
      body: const Center(
        child: Text("Bienvenu"),
      ),
    );
  }
}