import 'package:flutter/material.dart';
import 'package:iu/routes/routes.dart';

void main() {
  runApp(MyApp());
}

const gray = const Color(0xffacb8c7);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        routes: getRoutes(),
        theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              primary: gray,
            ),
          ),
        ));
  }
}
