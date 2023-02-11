import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'UserDetailsProvider.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key, required this.title});
  final String title;
  @override
  State<MyHome> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHome> {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Consumer<UserDetailsProvider>(
        builder: (context, provider, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hi' + provider.userName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'You are ' + provider.userAge.toString() + ' years old',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 TextButton(onPressed: (){
                   provider.increseAge();
                 }, child: Text('Increase Age',
                 style: TextStyle(color: Colors.green),)),
                 TextButton(onPressed: (){
                   provider.decreaseAge();
                 }, child: Text('Decrease Age',
                     style: TextStyle(color: Colors.red))),
               ],)
              ],
            ),
          );
        },
      ),

    );
  }
}
