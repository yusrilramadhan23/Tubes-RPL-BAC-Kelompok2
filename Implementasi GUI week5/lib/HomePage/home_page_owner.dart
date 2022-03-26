import 'package:flutter/material.dart';
import 'package:tubes_rpl/Drawer/drawer_owner.dart';
import 'package:tubes_rpl/models/list_kosan_owner.dart';

import 'search_page.dart';

class OwnerPage extends StatefulWidget {
  const OwnerPage({ Key? key }) : super(key: key);

  @override
  State<OwnerPage> createState() => _OwnerPageState();
}

class _OwnerPageState extends State<OwnerPage> {
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
      drawer: DrawerOwner(),
      body: ListKosanOwner()
    );
  }
}