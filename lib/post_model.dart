import 'package:flutter/foundation.dart';

class Post{
  final String spots;
  final String name;
  final String lat;
  final String lng;

  Post({
    @required this.spots,
    @required this.name,
    @required this.lat,
    @required this.lng,
  });

  factory Post.fromJSON(Map<String, dynamic> json) {
    return Post(
      spots: json['spots'] as String, 
      name: json['name'] as String, 
      lat: json['lat'] as String, 
      lng: json['lng'] as String,);
  }
}