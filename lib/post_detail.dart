import 'package:flutter/material.dart';
import 'package:salopark/post_model.dart';

class PostDetail extends StatelessWidget {
  final Post post;
  const PostDetail({@required this.post,});

  @override
  Widget build(BuildContext context) {
    

    

    return Scaffold(
      appBar: AppBar(
        title: Text(post.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Alueen nimi"),
                  subtitle: Text(post.name),

                ),
                ListTile(
                  title: Text("Vapaita paikkoja"),
                  subtitle: Text(post.spots),

                ),

              ]
            )
          )

      ))
    );
  }
}