import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateC extends StatefulWidget {
  const StateC({super.key});

  @override
  State<StatefulWidget> createState() => _StateCState();
}

class _StateCState extends State<StateC> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TapboxC(
      active: _active,
      onChanged: _handleTapboxChanged,
    );
  }
}

class TapboxC extends StatefulWidget {
  final bool active;

  final ValueChanged<bool> onChanged;

  const TapboxC({super.key, required this.active, required this.onChanged});

  @override
  State<StatefulWidget> createState() => _StateCState1();
}

class _StateCState1 extends State<TapboxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      onTap: _handleTap,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: widget.active ? Colors.red : Colors.blue,
            border:
                _highlight ? Border.all(color: Colors.white, width: 10) : null),
        child: Center(
          child: Text(
            widget.active ? "Active" : "UnActive",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
