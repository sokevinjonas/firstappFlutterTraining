import 'package:app1/pages/appel.dart';
import 'package:app1/pages/communaute.dart';
import 'package:app1/pages/discussion.dart';
import 'package:app1/pages/status.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
       theme: ThemeData(
         colorSchemeSeed: Colors.green,
         scaffoldBackgroundColor: Colors.white
       ),
      home: const HomePage(),
    )
  );
}

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<HomePage> createState(){
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final pages = [
    Discussion(),
    Status(),
    Communaute(),
    Appel()
  ];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Whatsapp Bar'
        ),
        elevation: 12,
      ),
      body: pages[pageIndex],
      bottomNavigationBar:  Container(
        decoration: const BoxDecoration(
           border: Border(
             top: BorderSide(color: Colors.grey, width: 0.3)
           )
        ),
        child: NavigationBar(
          selectedIndex: pageIndex,
          onDestinationSelected: (int index){
            setState(() {
              pageIndex = index;
            });
          },
          backgroundColor: Colors.white,
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.message),
                label: "Discussion"),
            NavigationDestination(
                icon: Icon(Icons.filter_tilt_shift),
                label: "Status"),
            NavigationDestination(
                icon: Icon(Icons.group),
                label: "Communaute"),
            NavigationDestination(
                icon: Icon(Icons.phone),
                label: "Appels"),
          ],
        ),
      )
    );
  }
}