import 'package:flutter/material.dart';
import 'package:tubes_rpl/HomePage/home_page_owner.dart';

class KosanPage extends StatefulWidget {
  const KosanPage({ Key? key }) : super(key: key);

  @override
  State<KosanPage> createState() => _KosanPageState();
}

class _KosanPageState extends State<KosanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Kosan"),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const OwnerPage())),
            icon: const Icon(
              Icons.home,
              color: Colors.white
            )
          )
        ],
      ),
      body: ListView(
        children: [
          Ink.image(
            image: const NetworkImage('asset/img/kosan.jpg'),
            height: 200,
            width: 200,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: Text('   Jl. Telekomunikasi Jl. Terusan Buah Batu, Sukapura, Kec. Dayeuhkolot, Kota Bandung, Jawa Barat 40257'),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
            child: Text('Deskripsi : '),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 2, 25, 10),
            child: Text('Jumlah kamar kosan tersedia : 10'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Text('Fasilitas :'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(25, 2, 25, 0),
                child: Text('Kasur, Bantal, Guling, Toilet, meja belajar, kursi, lemari'),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 50, 25, 10),
            child: Center(child: Text('Rp.400.000/bulan')),
          ),
          Center(
            child: TextButton(
              onPressed: () {  },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Text('Status', style: TextStyle(color: Colors.white)),
              ),
            )
          )
        ]
      ),
    );
  }
}