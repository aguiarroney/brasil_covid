import 'package:brasil_covid/models/states_model.dart';
import 'package:flutter/material.dart';

class CardListItem extends StatelessWidget {
  final int index;
  final List<StateModel> data;

  CardListItem({this.index, this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 100,
        child: Stack(
          children: [
            Positioned(
              top: 2,
              left: 2,
              child: Text(
                data[index].name,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Positioned(
              top: 30,
              left: 2,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Casos: ${data[index].cases}",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text("Mortes: ${data[index].deaths}",
                        style: Theme.of(context).textTheme.headline3),
                    Text("Suspeitos: ${data[index].suspects}",
                        style: Theme.of(context).textTheme.headline3),
                  ]),
            ),
            Positioned(
              right: 5,
              bottom: 5,
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: Text("#${index + 1}",
                    style: Theme.of(context).textTheme.headline2),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
