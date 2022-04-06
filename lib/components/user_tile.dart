import 'package:flutter/material.dart';
import 'package:projeto_crud/ROUTES/app_routes.dart';
import 'package:projeto_crud/models/user.dart';
import 'package:projeto_crud/provider/users.dart';
import 'package:provider/provider.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? const CircleAvatar(child: const Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));

    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
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
                icon: const Icon(Icons.edit)),
            IconButton(
                color: Colors.red,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Excluir Usuario'),
                      content: const Text('Tem certeza??'),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: const Text('Sim'),
                        ),
                        FlatButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: const Text('Não'),
                        )
                      ],
                    ),
                  ).then((confimed) {
                    if (confimed) {
                      Provider.of<Users>(context, listen: false).remove(user);
                    }
                  });
                },
                icon: const Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
