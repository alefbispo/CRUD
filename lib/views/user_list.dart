import 'package:flutter/material.dart';
import 'package:projeto_crud/components/user_tile.dart';
import 'package:projeto_crud/provider/users.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuarios'),
      actions: <Widget>[
        IconButton(onPressed: (){},
            icon: Icon(Icons.add),
        )
      ]),

      body: ListView.builder(
        itemCount: users.count,
          itemBuilder:(ctx,i) =>
              UserTile(users.all.elementAt(i))
      ),
    );
  }
}