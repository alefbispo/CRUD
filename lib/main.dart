import 'package:flutter/material.dart';
import 'package:projeto_crud/ROUTES/app_routes.dart';
import 'package:projeto_crud/provider/users.dart';
import 'package:projeto_crud/views/user.form.dart';
import 'package:projeto_crud/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Users(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          AppRoutes.HOME: (_)
          => UserList(),
          AppRoutes.USER_FORM:
          (_) => UserForm()

        },
      ),
    );
  }
}
