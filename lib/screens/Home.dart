import 'package:fav_youtube/delegates/data_dearch.dart';
import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(

      ),
    );
  }
}