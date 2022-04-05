import 'package:flutter/material.dart';
import 'package:projeto_crud/ROUTES/app_routes.dart';
import 'package:projeto_crud/models/user.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));

    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.emial),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
                color: Colors.orange,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.USER_FORM,
                    arguments: user,
                  );
                },
                icon: Icon(Icons.edit)),
            IconButton(
                color: Colors.red,
                onPressed: () {},
                icon: Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
