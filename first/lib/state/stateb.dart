import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateB extends StatefulWidget {
  const StateB({super.key});

  @override
  State<StatefulWidget> createState() => _StateAState();
}

class _StateAState extends State<StateB> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapboxB(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}

class TapboxB extends StatelessWidget {
  final bool active;

  final ValueChanged<bool> onChanged;

   const TapboxB({super.key, required this.active, required this.onChanged});

  void _handleTap() {
    onChanged(!active);
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(color: active ? Colors.red : Colors.blue),
        child: Center(
          child: Text(active ? "Active" : "UnActive",style: const TextStyle(color: Colors.white),),
        ),
      ),
    );
  }


}
