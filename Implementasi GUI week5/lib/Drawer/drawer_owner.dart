import 'package:flutter/material.dart';

import '../HomePage/choose_page.dart';

class DrawerOwner extends StatefulWidget {
  const DrawerOwner({ Key? key }) : super(key: key);

  @override
  State<DrawerOwner> createState() => _DrawerOwnerState();
}

class _DrawerOwnerState extends State<DrawerOwner> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
              accountName: Text(
                'Dandi Mochamad Reza',
                style: TextStyle(
                  color: Colors.white
                )
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('asset/img/Sleepy.jpg'),
              ),
              accountEmail: Text(
                'dandimr16@gmail.com',
                style: TextStyle(
                  color: Colors.white
                )
              )),
          DrawerListTile(
            iconData: Icons.person_outline_rounded,
            title: 'Profile',
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.attach_money,
            title: 'Orderan Masuk',
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.house,
            title: 'List Kosan',
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.history,
            title: 'Riwayat',
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.logout,
            title: 'Log Out',
            onTilePressed: () {
              Navigator.push(context, MaterialPageRoute(
              builder: (context) => const ChoosePage(),
            ));
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({Key? key, required this.iconData, required this.title, required this.onTilePressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}