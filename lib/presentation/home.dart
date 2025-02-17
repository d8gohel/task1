import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:glasier_task/data/drinks.dart';
import 'package:glasier_task/domain/methods.dart';
import 'package:glasier_task/presentation/detailedview.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    print("object");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Drinks data = Drinks.fromJson({});
    return Scaffold(
        appBar: AppBar(
          title: Text("home"),
        ),
        body: FutureBuilder(
            future: Provider.of<Methods>(context).ApiCall(),
            builder: (c, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                data = Drinks.fromJson(snapshot.data as Map<String, dynamic>);
                return ListView.builder(
                    itemCount: data.drinks?.length,
                    itemBuilder: (c, index) {
                      print(data.drinks?[index].strDrinkThumb);
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => Detailedview(
                                          index: index,
                                        )));
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Column(
                              children: [
                                Image.network(data.drinks![index].strDrinkThumb
                                    .toString()),
                                // : FlutterLogo(),
                                SizedBox(
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                        data.drinks?[index].strDrink ?? ""),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              }
            }));
  }
}
