import 'package:facebook_ui/widgets/maintab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(246, 238, 238, 238),
        ),
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: MainTab(),
    );
  }
}
