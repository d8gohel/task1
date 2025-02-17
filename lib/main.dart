import 'package:flutter/material.dart';
import 'package:glasier_task/domain/methods.dart';
import 'package:glasier_task/presentation/home.dart';
import 'package:glasier_task/presentation/login.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await Hive.initFlutter();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => Methods(),
    )
  ], child: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var islogedin = false;

  @override
  void initState() {
    // TODO: implement initState
    check();
  }

  Future<bool> check() async {
    var b = await Hive.openBox("task5");
    islogedin = await b.get("islogedin", defaultValue: false);
    print(islogedin);
    return islogedin;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder(
        future: check(),
        builder: (context, snapshot) {
          if (snapshot.data == true) {
            return Home();
          } else {
            return Login();
          }
        },
      ),
    );
  }
}
