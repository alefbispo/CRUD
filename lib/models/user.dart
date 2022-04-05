import 'package:flutter/cupertino.dart';

class User {
  final String id;
  final String name;
  final String emial;
  final String avatarUrl;

  const User(this.id,
     @required this.name,
      @required this.emial,
      @required this.avatarUrl);
}
