import 'package:flutter/material.dart';
import 'package:tubes_rpl/HomePage/order_page.dart';

class ListKosan extends StatelessWidget {
  const ListKosan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 10),
        ListTile(
          title: const Text('Permata Biru Indah'),
          leading: InkWell(
            splashColor: Colors.black26,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
              builder: (context) => const OrderPage(),
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
              builder: (context) => const OrderPage(),
            ));
          },
        ),
      ]
    );
  }
}