import 'package:flutter/material.dart';
import 'package:tubes_rpl/HomePage/home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const MyHomePage())),
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
            image: const NetworkImage('asset/img/Sleepy.jpg'),
            height: 200,
            width: 200,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
            child: Text('Nama: Dandi Mochamad Reza'),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 2, 25, 0),
            child: Text('Email: dandimr16@gmail.com'),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 2, 25, 0),
            child: Text('Universitas : Telkom University'),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 2, 25, 10),
            child: Text('Nomor HP : 081 69420'),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Account'),
                    content: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                        image: NetworkImage("asset/img/Sleepy.jpg")
                        )
                    ),
                    ),
                    actions: <Widget>[
                      TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'no'),
                        child: const Text('no'),
                      ),
                    ],
                  )
                );
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Text('Delete', style: TextStyle(color: Colors.white)),
              ),
            )
          )
        ]
      ),
    );
  }
}