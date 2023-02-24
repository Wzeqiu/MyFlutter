import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("标题"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello world",
                textAlign: TextAlign.left,
                style:
                TextStyle(color: Colors.red, backgroundColor: Colors.white),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50),
                  child: const Text(
                    "YD-YXTJA-2102217-001113123123123123123",
                    maxLines: 1,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
              )
            ],
          ),
        ));
  }
}
