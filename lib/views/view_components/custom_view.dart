import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customView(BuildContext context) => Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: Theme.of(context).accentColor),
        ),
        CustomScrollView(slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            backgroundColor: Theme.of(context).primaryColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Brasil Covid",
                style: Theme.of(context).textTheme.headline1,
              ),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Card(
                  child: Text(
                    "$index",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                );
              },
              childCount: 20,
            ),
          ),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Card(
                  color: Colors.amber,
                  child: Text(
                    "$index",
                  ),
                );
              }),
              itemExtent: 2),
        ]),
      ],
    );
