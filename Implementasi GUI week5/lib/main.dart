import 'package:flutter/material.dart';
import 'package:tubes_rpl/HomePage/choose_page.dart';

import 'HomePage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor:const Color.fromARGB(255, 255, 145, 0),
        backgroundColor: Colors.white, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFFe7ebf0))
      ),
      debugShowCheckedModeBanner: false,
      home: ChoosePage()
    );
  }
}