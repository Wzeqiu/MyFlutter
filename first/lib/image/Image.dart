import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("图片"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Image(
              image: AssetImage("images/ic_launcher.png"),
              width: 100,
            ),
            Image.asset(
              "images/ic_launcher.png",
              width: 100,
            ),
            const Image(
              image: NetworkImage(
                  "https://imgconvert.csdnimg.cn/aHR0cHM6Ly9pbWcyMDIwLmNuYmxvZ3MuY29tL2Jsb2cvMTkzODQzMS8yMDIwMDcvMTkzODQzMS0yMDIwMDcyMzE1MzM0MjE3MS04OTA2OTk2NTIucG5n?x-oss-process=image/format,png"),
              width: 100,
            ),
            Image.network(
              "https://imgconvert.csdnimg.cn/aHR0cHM6Ly9pbWcyMDIwLmNuYmxvZ3MuY29tL2Jsb2cvMTkzODQzMS8yMDIwMDcvMTkzODQzMS0yMDIwMDcyMzE1MzM0MjE3MS04OTA2OTk2NTIucG5n?x-oss-process=image/format,png",
              width: 100,height: 100,
              fit: BoxFit.none,
            )
          ],
        ),
      ),
    );
  }
}
