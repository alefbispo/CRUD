import 'package:flutter/material.dart';
import 'package:projeto_crud/components/user_tile.dart';
import 'package:projeto_crud/data/dummy_users.dart';

class UserList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    const users = DUMMY_USERS;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuarios'),
      actions: <Widget>[
        IconButton(onPressed: (){},
            icon: Icon(Icons.add),
        )
      ]),

      body: ListView.builder(
        itemCount: users.length,
          itemBuilder:(ctx,i) =>
              UserTile(users.values.elementAt(i))
      ),
    );
  }
}