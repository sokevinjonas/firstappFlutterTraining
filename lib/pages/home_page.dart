import 'package:app1/pages/setting_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<StatefulWidget> createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(
                  context,
                  '/settings'
              );
              // Navigator.push(
              //   // context,
              //   // MaterialPageRoute(
              //   //     builder: (context){
              //   //       return const MySettingPage();
              //   // }
              //   // )
              // );
            },
            child: const Text("Allez sur la page Parametre"),
          )
      ),
    );
  }
}