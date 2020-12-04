import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:fav_youtube/blocs/favorites_bloc.dart';
import 'package:fav_youtube/models/video.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<FavoriteBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Favoritos"),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Colors.black87,
      body: StreamBuilder<Map<String, Video>>(
        stream: bloc.outFav,
        initialData: {},
        builder: (context, snapshot){
          return ListView(
            children: snapshot.data.values.map((v){
              return InkWell(
                onTap: (){
                  
                },
                onLongPress: (){
                  bloc.toggleFavorite(v);
                },
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      child: Image.network(v.thumb),
                    ),
                    Expanded(
                      child: Text(v.title, style: TextStyle(color: Colors.white), maxLines: 2,),
                    )
                  ],
                ),
              );
            }).toList(),
          );
        }
      ),
    );
  }
}
