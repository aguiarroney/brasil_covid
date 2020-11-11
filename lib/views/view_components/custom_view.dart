import 'package:brasil_covid/blocs/state_bloc.dart';
import 'package:brasil_covid/models/states_model.dart';
import 'package:brasil_covid/views/view_components/tile_list_item.dart';
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
                  elevation: 10,
                  pinned: false,
                  expandedHeight: 100,
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
                  delegate: SliverChildBuilderDelegate((context, index) {
                    if (snapshot.hasData) {
                      return TileListItem(
                        index: index,
                        data: snapshot.data,
                      );
                    } else
                      return Container();
                  }, childCount: snapshot.hasData ? snapshot.data.length : 0),
                ),
              ]);
            }),
      ],
    );
  }
}

// Widget customView(BuildContext context, StateBloc stateBloc) => Stack(
//       children: [
//         Container(
//           decoration: BoxDecoration(color: Theme.of(context).accentColor),
//         ),
//         StreamBuilder<List<StateModel>>(
//             stream: stateBloc.outList,
//             builder: (context, snapshot) {
//               return CustomScrollView(slivers: [
//                 SliverAppBar(
//                   elevation: 10,
//                   pinned: false,
//                   expandedHeight: 100,
//                   floating: true,
//                   snap: true,
//                   backgroundColor: Theme.of(context).primaryColor,
//                   flexibleSpace: FlexibleSpaceBar(
//                     title: Text(
//                       "Brasil Covid",
//                       style: Theme.of(context).textTheme.headline1,
//                     ),
//                     centerTitle: true,
//                   ),
//                 ),
//                 SliverList(
//                   delegate: SliverChildBuilderDelegate((context, index) {
//                     if (snapshot.hasData) {
//                       return TileListItem(
//                         index: index,
//                         data: snapshot.data,
//                       );
//                     } else
//                       return Container();
//                   }, childCount: snapshot.hasData ? snapshot.data.length : 0),
//                 ),
//               ]);
//             }),
//       ],
//     );
