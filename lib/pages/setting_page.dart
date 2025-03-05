import 'package:flutter/material.dart';

class MySettingPage extends StatefulWidget {
  const MySettingPage({super.key});
  @override
  State<StatefulWidget> createState() => _SettingHomeState();
}

class _SettingHomeState extends State<MySettingPage>{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Setting Page"),
      ),
      body: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text("Retournez au home Page"),
          )
      ),

    );
  }
}