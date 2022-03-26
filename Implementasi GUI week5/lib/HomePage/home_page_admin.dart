import 'package:flutter/material.dart';
import 'package:tubes_rpl/Drawer/drawer_admin.dart';
import 'package:tubes_rpl/models/admin_only.dart';
import 'package:tubes_rpl/models/list_kosan.dart';

import 'search_page.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({ Key? key }) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
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
      drawer: DrawerAdmin(),
      body: AdminOnly()
    );
  }
}