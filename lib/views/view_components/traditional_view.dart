import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget traditionalView(BuildContext context) => Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Brasil Covid",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("$index"),
              onTap: () {},
            );
          }),
    );
