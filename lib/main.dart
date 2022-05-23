import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:mickotubagas_20190801086_uts/listTileColorBloc.dart';
import 'package:mickotubagas_20190801086_uts/keranjanglistBloc.dart';
import 'package:mickotubagas_20190801086_uts/home.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        //add yours BLoCs controlles
        Bloc((i) => KeranjangListBloc()),
        Bloc((i) => ColorBloc()),
      ],
      child: MaterialApp(
        title: "Pangan Marketplace",
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}