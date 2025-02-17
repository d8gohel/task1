// import 'package:flutter/cupertino.dart';

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:glasier_task/data/drinks.dart';
import 'package:glasier_task/presentation/home.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

class Methods with ChangeNotifier {
  Map<String, dynamic> data = {};
  void signup(
    username,
    password,
    BuildContext context,
  ) async {
    var flag = true;
    Box box = await Hive.openBox("task5");

    List creditinals = await box.get("creditinals") ?? [];

    for (var i = 0; i < creditinals.length; i++) {
      if (username == creditinals[i]["mail"] &&
          password == creditinals[i]["password"]) {
        flag = false;
        break;
      } else {
        creditinals.add({"mail": username, "password": password});
        await box.put("creditinals", creditinals);
        print(username);
        print(password);
        print(creditinals);
        print(creditinals);
      }
    }
    if (!flag) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("user registered")));
      print("user  registered");
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("user already registered")));
      print("user already registered");
    }

    notifyListeners();
    // return true;
  }

  void login(username, String password, BuildContext context) async {
    Box box = await Hive.openBox("task5");
    var flag = true;
    List creditinals = await box.get("creditinals") ?? [];
    for (var i = 0; i < creditinals.length; i++) {
      if (username == creditinals[i]["mail"] &&
          password == creditinals[i]["password"]) {
        // Scaffold.of(context
        print("user logedin");
        box.put("islogedin", true);
        flag = false;

        // return;
      } else {}
    }
    if (!flag) {
    } else {
      await box.put("islogedin", true);
      await ApiCall();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (c) => Home()));
    }
    notifyListeners();
  }

  Future<Map> ApiCall() async {
    Box box = await Hive.openBox("task5");
    try {
      Response r = await http.get(Uri.parse(
          "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"));
      // .timeout(Duration(seconds: 30));
      if (r.statusCode == 200) {
        Drinks d = Drinks.fromJson(jsonDecode(r.body));
        data = d.toJson();
        print(d.drinks!.length);

        await box.put("data", data);
      }
    } catch (e) {
      print(e);
      // TODO
    } finally {
      // data = await box.get("data") as Map<String, dynamic>;
    }
    print(data);
    return data;
  }
}
