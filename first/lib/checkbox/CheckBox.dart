import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchAndCheckBoxRoute extends StatefulWidget {
  const SwitchAndCheckBoxRoute({Key? key}) : super(key: key);

  @override
  State<SwitchAndCheckBoxRoute> createState() => _SwitchAndCheckBoxRouteState();
}

class _SwitchAndCheckBoxRouteState extends State<SwitchAndCheckBoxRoute> {
  bool _switchSelected = true; // 维护单选开关状态
  bool _checkboxSelected = true; // 维护复选框状态

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("选择框")),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Switch(
                value: _switchSelected,
                activeColor: Colors.yellow,
                onChanged: (value) {
                  setState(() {
                    _switchSelected = value;
                  });
                }),
            Checkbox(
                value: _checkboxSelected,
                activeColor: Colors.red,
                onChanged: (value) {
                  setState(() {
                    _checkboxSelected = value!;
                  });
                })
          ],
        ),
      ),
    );
  }
}
