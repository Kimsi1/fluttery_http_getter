import 'dart:convert';

import 'package:http/http.dart';
import 'package:salopark/post_model.dart';

class HttpService {

  final String postsUrl = "https://capstonesalonki.herokuapp.com/api/park/";


  Future<List<Post>> getPosts() async{
    Response res = await get(postsUrl);


    if(res.statusCode==200){
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts =
          body.map((dynamic item) => Post.fromJSON(item)).toList();

      return posts;
    } else {
      throw "Can't get posts";
    }


  }

}