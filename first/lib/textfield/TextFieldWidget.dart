import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final TextEditingController _pwdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _pwdController.addListener(() {
      print("密码>>${_pwdController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              autofocus: true,
              onChanged: ((string) {
                print("输入的用户名");
              }),
              decoration: const InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person)),
            ),
            TextField(
              obscureText: false,
              controller: _pwdController,
              onChanged: ((string) {
                print("输入的密码$string");
              }),
              decoration: const InputDecoration(
                  labelText: "密码",
                  hintText: "登录密码",
                  prefixIcon: Icon(Icons.lock)),
            )
          ],
        ),
      ),
    );
  }
}
