import 'package:flutter/material.dart';
import 'package:tubes_rpl/HomePage/kosan_page_admin.dart';
import '../HomePage/profile_page_admin.dart';

class AdminOnly extends StatelessWidget {
  const AdminOnly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(child: Text('Consumer List', style: TextStyle(fontSize: 20))),
        ),
        ListTile(
          title: const Text('Dandi'),
          leading: InkWell(
            splashColor: Colors.black26,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            ));
            },
            child: Ink.image(
              image: const NetworkImage('asset/img/Sleepy.jpg'),
              height: 200,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            ));
          },
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(child: Text('Kosan List', style: TextStyle(fontSize: 20))),
        ),
        ListTile(
          title: const Text('Permata Biru Indah'),
          leading: InkWell(
            splashColor: Colors.black26,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
              builder: (context) => const KosanAdmin(),
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
              builder: (context) => const KosanAdmin(),
            ));
          },
        ),
      ]
    );
  }
}