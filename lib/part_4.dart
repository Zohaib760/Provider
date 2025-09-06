import 'dart:async';

import 'package:flutter/material.dart';

class Part4 extends StatefulWidget {
  const Part4({super.key});

  @override
  State<Part4> createState() => _Part4State();
}

class _Part4State extends State<Part4> {
  int count = 0 ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Timer.periodic(Duration(seconds: 2), (timer){
      count++;
    setState(() {
    });

    });
  }

  @override
  Widget build(BuildContext context) {
    print("Build");
    return  Scaffold(
      appBar:AppBar(
        title: Text( "Provider Practice ",),
            centerTitle: true,
      ) ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}", style: TextStyle(fontSize: 30),),),
          Center(child: Text(count.toString(), style: TextStyle(fontSize: 30),),),
        ],
      ),
    );
  }
}
