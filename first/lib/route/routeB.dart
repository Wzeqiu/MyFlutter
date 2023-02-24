import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class routeB extends StatelessWidget {
  const routeB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "路由注册",
      initialRoute: "/",
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        "new_page": (context) => NewRouteB(),
        "/": (context) => const NewRouteBHome(
              title: "这是主页",
            )
      },
    );
  }
}

class NewRouteBHome extends StatelessWidget {
  final String title;

  const NewRouteBHome({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        onPressed: () {
          print("点击事件");
          // Navigator.pushNamed(context, "new_page");
          Navigator.of(context).pushNamed("new_page", arguments: "你好");
        },
        child: const Text("跳转到新界面"),
      ),
    );
  }
}

class NewRouteB extends StatelessWidget {
  const NewRouteB({super.key});

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("新界面"),
      ),
      body: Column(
        children: [
          const Text("z这是新界面"),
          Text("接收到参数====${arg as String}"),
          Text(
            "随机字符===${WordPair.random().toString()}",
            style: const TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
