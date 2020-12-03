import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:fav_youtube/blocs/videos_bloc.dart';
import 'package:fav_youtube/delegates/data_dearch.dart';
import 'package:fav_youtube/widgets/video_tile.dart';
import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          Align(
            alignment: Alignment.center,
            child: Text("0", style: TextStyle(fontSize: 20.0),),
          ),
          IconButton(
            icon: Icon(Icons.star),
            onPressed: (){

            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              String result = await showSearch(context: context, delegate: DataSearch());
              if(result != null) BlocProvider.of<VideosBloc>(context).inSearch.add(result);
            },
          )
        ],
        centerTitle: false,
        backgroundColor: Colors.black87,
        elevation: 0,
        title: Container(
          height: 25.0,
          child: Image.asset("images/yt-logo.png")
        )
      ),
      body: StreamBuilder(
        stream: BlocProvider.of<VideosBloc>(context).outVideos,
        builder: (context, snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index){
                return VideoTile(snapshot.data[index]);
              }
            );
          }
          return Container();
        }
      ),
    );
  }
}