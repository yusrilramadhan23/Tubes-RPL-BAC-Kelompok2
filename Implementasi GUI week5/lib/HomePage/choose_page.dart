import 'package:flutter/material.dart';

import 'home_page.dart';
import 'home_page_admin.dart';
import 'home_page_owner.dart';

class ChoosePage extends StatefulWidget {
  const ChoosePage({ Key? key }) : super(key: key);

  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
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
        ),
        body: Center(
          child: Column(
            children: [
              Ink.image(
                image: const NetworkImage('asset/img/kosan.jpg'),
                height: 200,
                width: 200,
              ),
              const Text('Aplikasi Kosan Mahasiswa'),
              const SizedBox(height: 50,),
              const Text('Masuk sebagai : '),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const MyHomePage(),
                      ));
                    },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('Mahasiswa', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const OwnerPage(),
                      ));
                    },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('Owner', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const AdminPage(),
                      ));
                    },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('Admin', style: TextStyle(color: Colors.white)),
                    ),
                  )
                ],
              )
            ]
          ),
        ),
      );
  }
}