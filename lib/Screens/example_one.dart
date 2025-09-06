import 'package:flutter/material.dart';
import 'package:provider/provider.dart%20';
import 'package:provider_tutorial/Provider/provider_exampleONe.dart';
class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  @override
  Widget build(BuildContext context) {
    print("buil");
    return Scaffold(
      appBar: AppBar(
        title: Text("Example One"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(
              builder:(context, value, child){
                return Slider(
                    min: 0,
                    max: 1,
                    value: value.value, onChanged: value.setValue
                );
              } ),
          Consumer<ExampleOneProvider>(builder: (context, value, child){
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.red.withOpacity(value.value),

                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.green.withOpacity(value.value),

                  ),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
