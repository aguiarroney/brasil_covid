import 'package:brasil_covid/models/states_model.dart';
import 'package:flutter/material.dart';

class TileListItem extends StatelessWidget {
  final int index;
  final List<StateModel> data;

  TileListItem({this.index, this.data});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text("#${index + 1}"),
      trailing: Icon(Icons.more),
      title: Text(
        "${data[index].name}",
        style: Theme.of(context).textTheme.headline2,
      ),
      subtitle: Text("Casos: ${data[index].cases}"),
      onTap: () {
        print("tap");
      },
    );
  }
}
