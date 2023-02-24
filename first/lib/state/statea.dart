import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateA extends StatefulWidget {
  const StateA({super.key});

  @override
  State<StatefulWidget> createState() => _StateAState();
}

class _StateAState extends State<StateA> {
  bool _active = false;

  void _handleTapboxChanged() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTapboxChanged,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(color: _active ? Colors.yellow : Colors.red),
        child: Center(
          child: Text(_active ? "Active" : "UnActive"),
        ),
      ),
    );
  }
}
