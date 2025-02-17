import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:glasier_task/domain/methods.dart';
import 'package:glasier_task/presentation/home.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  var islogedin = false;
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    print("login");
    check();
  }

  void check() async {
    var b = await Hive.openBox("task5");
    islogedin = await b.get("islogedin", defaultValue: false);
    // print(islogedin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  FlutterLogo(
                    size: 150,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        label: Text("E-mail"), border: OutlineInputBorder()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text("password"), border: OutlineInputBorder()),
                    controller: password,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Password";
                      }
                      return null;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        color: Colors.blue,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Provider.of<Methods>(context, listen: false)
                                .login(name.text, password.text, context);
                          }
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.blue,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Provider.of<Methods>(context, listen: false)
                                .signup(name.text, password.text, context);
                            Provider.of<Methods>(context, listen: false)
                                .ApiCall();
                          }
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
