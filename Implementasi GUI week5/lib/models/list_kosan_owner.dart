import 'package:flutter/material.dart';

import '../HomePage/kosan_page.dart';

class ListKosanOwner extends StatelessWidget {
  const ListKosanOwner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(child: Text('List Kosan', style: TextStyle(fontSize: 20))),
        ),
        ListTile(
          title: const Text('Permata Biru Indah'),
          leading: InkWell(
            splashColor: Colors.black26,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
              builder: (context) => const KosanPage(),
            ));
            },
            child: Ink.image(
              image: const NetworkImage('asset/img/kosan.jpg'),
              height: 200,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          subtitle: const Text('Jl. Telekomunikasi Jl. Terusan Buah Batu, Sukapura, Kec. Dayeuhkolot, Kota Bandung, Jawa Barat 40257'),
          trailing: const Text('Rp.400.000/bulan'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => const KosanPage(),
            ));
          },
        ),
      ]
    );
  }
}