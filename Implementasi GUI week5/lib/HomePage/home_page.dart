import 'package:flutter/material.dart';
import 'package:tubes_rpl/models/list_kosan.dart';

import '../Drawer/drawer_screen.dart';
import 'search_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:  true,
        title: const Text(
          "Beranda",
          style: TextStyle(
            color: Colors.white
          )
        ),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const SearchPage())),
            icon: const Icon(
              Icons.search,
              color: Colors.white
            )
          )
        ],
      ),
      drawer: DrawerScreen(),
      body: ListKosan()
    );
  }
}