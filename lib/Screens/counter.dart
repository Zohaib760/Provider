import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/Provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override

  void initState() {
    final countProvider =  Provider.of<CountProvider>(context, listen: false);
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer){
      countProvider.setCount();
    });

  }

  @override
  Widget build(BuildContext context) {
    final countProvider =  Provider.of<CountProvider>(context, listen: false);

    return  Scaffold(
      appBar: AppBar(
        title: Text("Cunter Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context, value, child){
          print(" text build");
          return Text(value.count.toString(), style: TextStyle(fontSize: 50),);
        })
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         countProvider.setCount();
        },
      child:Icon(Icons.add) ,),
    );
  }
}
