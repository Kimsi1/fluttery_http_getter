import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:salopark/http_service.dart';
import 'package:salopark/post_detail.dart';
import 'package:salopark/post_model.dart';

class PostsPage extends StatelessWidget{
  final HttpService httpService = new HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Valitse alue"),
      ),
      body: FutureBuilder(future: httpService.getPosts(),
      builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot){

        if(snapshot.hasData){
          List<Post> posts = snapshot.data;


          return ListView(
            children: posts
            .map((Post post) => ListTile(
              title: Text(post.name),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => PostDetail(post: post,))
              )
              ))
              .toList(),
            );
        }


        return Center(child: CircularProgressIndicator());
      },
      )
    );
  }

}