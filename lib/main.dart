import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:fav_youtube/blocs/favorites_bloc.dart';
import 'package:fav_youtube/blocs/videos_bloc.dart';
import 'package:fav_youtube/screens/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: VideosBloc(),
      child:  BlocProvider(
        bloc: FavoriteBloc(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Youtube Fav - Fan Made',
            home: Home()
        ),
      )
    );
  }
}
