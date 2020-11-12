import 'package:brasil_covid/blocs/state_bloc.dart';
import 'package:brasil_covid/models/states_model.dart';
import 'package:brasil_covid/views/view_components/card_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomView extends StatelessWidget {
  // BuildContext context;
  final StateBloc stateBloc;

  CustomView({this.stateBloc});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: Theme.of(context).accentColor),
        ),
        StreamBuilder<List<StateModel>>(
            stream: stateBloc.outList,
            builder: (context, snapshot) {
              return CustomScrollView(slivers: [
                SliverAppBar(
                  elevation: 0,
                  pinned: false,
                  expandedHeight: 100,
                  floating: true,
                  snap: true,
                  backgroundColor: Theme.of(context).accentColor,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      "Brasil Covid",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    centerTitle: true,
                  ),
                ),
                SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    if (snapshot.hasData) {
                      // return TileListItem(
                      //   index: index,
                      //   data: snapshot.data,
                      // );
                      return CardListItem(
                        index: index,
                        data: snapshot.data,
                      );
                    } else
                      return Container();
                  }, childCount: snapshot.hasData ? snapshot.data.length : 0),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200),
                ),
              ]);
            }),
      ],
    );
  }
}
