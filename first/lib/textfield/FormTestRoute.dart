import 'package:flutter/material.dart';

class FormTestRoute extends StatefulWidget {
  const FormTestRoute({Key? key}) : super(key: key);

  @override
  State<FormTestRoute> createState() => _FormTestRouteState();
}

class _FormTestRouteState extends State<FormTestRoute> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("验证登录信息"),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                EditPerson(
                    userController: _userController,
                    pwdController: _pwdController),
                PersonLogin(
                    formKey: _formKey,
                    userController: _userController,
                    pwdController: _pwdController)
              ],
            ),
          )),
    );
  }
}

class EditPerson extends StatefulWidget {
  final TextEditingController userController;
  final TextEditingController pwdController;

  const EditPerson(
      {Key? key, required this.userController, required this.pwdController})
      : super(key: key);

  @override
  State<EditPerson> createState() => _EditPersonState();
}

class _EditPersonState extends State<EditPerson> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          autofocus: true,
          controller: widget.userController,
          validator: ((value) {
            return value!.trim().length > 2 ? null : "用户名长度不能少于2";
          }),
          decoration: const InputDecoration(
              icon: Icon(Icons.person), hintText: "登录账户", labelText: "用户名"),
        ),
        TextFormField(
          obscureText: true,
          controller: widget.pwdController,
          validator: ((value) {
            return value!.trim().length > 6 ? null : "密码长度不能少于6";
          }),
          decoration: const InputDecoration(
              icon: Icon(Icons.lock), hintText: "登录密码", labelText: "密码"),
        )
      ],
    );
  }
}

class PersonLogin extends StatefulWidget {
  final GlobalKey formKey;
  final TextEditingController userController;
  final TextEditingController pwdController;

  const PersonLogin(
      {Key? key,
      required this.formKey,
      required this.userController,
      required this.pwdController})
      : super(key: key);

  @override
  State<PersonLogin> createState() => _PersonLoginState();
}

class _PersonLoginState extends State<PersonLogin> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: const EdgeInsets.only(top: 20),
    //   child: (Expanded(
    //       child: ElevatedButton(
    //     onPressed: () {
    //       if ((widget.formKey.currentState as FormState).validate()) {
    //         print("登录账号===${widget.userController.text}");
    //         print("登录密码===${widget.pwdController.text}");
    //
    //         print("登录成功");
    //       }
    //     },
    //     child: const Padding(padding: EdgeInsets.all(20), child: Text("登录")),
    //   ))),
    // );

    return Container(
      alignment: Alignment.topLeft,
      child: Column(
      children: [
        Text("aaaaaaaa"),
      ],
    ),);
  }
}
