import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouterTestRoute extends StatelessWidget {
  const RouterTestRoute({super.key});

  void funcation1(BuildContext context) async {
    var result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const TipRout(text: "返回值");
    }));
    print("获取到返回值：$result");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          funcation1(context);
        },
        child: const Text("前往获取返回值"),
      ),
    );
  }
}

class TipRout extends StatelessWidget {
  final String text;

  const TipRout({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("需要返回值"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Text(text),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, "这是返回值");
                  },
                  child: const Text("返回"))
            ],
          ),
        ),
      ),
    );
  }
}
