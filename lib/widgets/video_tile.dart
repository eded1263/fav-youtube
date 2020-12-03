import 'package:fav_youtube/models/video.dart';
import "package:flutter/material.dart";

class VideoTile extends StatelessWidget {

  final Video video;

  VideoTile(this.video);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.fromLTRB(0,0,0,8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 16.0/9.0,
            child: Image.network(video.thumb, fit: BoxFit.cover),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: Text(video.title,
                        maxLines: 2,
                        style: TextStyle(color: Colors.white, fontSize: 16.0),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(video.channel, style: TextStyle(color: Colors.white, fontSize: 14.0)),
                    )
                  ],
                )
              ),
              IconButton(icon: Icon(Icons.star_border, color: Colors.white,), onPressed: (){

              })
            ],
          )
        ],
      ),
    );
  }
}