import 'package:flutter/material.dart';
import 'package:glasier_task/data/drinks.dart';
import 'package:glasier_task/domain/methods.dart';
import 'package:provider/provider.dart';

class Detailedview extends StatefulWidget {
  final int index;
  const Detailedview({super.key, required this.index});

  @override
  State<Detailedview> createState() => _DetailedviewState();
}

class _DetailedviewState extends State<Detailedview> {
  @override
  Widget build(BuildContext context) {
    Drinks data = Drinks.fromJson(Provider.of<Methods>(context).data);

    return Scaffold(
      appBar: AppBar(
        title: Text(data.drinks![widget.index].strDrink ?? ""),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(data.drinks![widget.index].strDrinkThumb ?? ""),
            Text(
              "tags:${data.drinks![widget.index].strTags}",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "strInstructions:\n${data.drinks![widget.index].strInstructions}",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "top 3 ingrediants:\n${data.drinks![widget.index].strIngredient1},${data.drinks![widget.index].strIngredient2},${data.drinks![widget.index].strIngredient3}",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
