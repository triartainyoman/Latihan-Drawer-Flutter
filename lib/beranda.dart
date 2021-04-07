import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Beranda"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Klik Search");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("Klik Notifikasi");
            },
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("I Nyoman Triarta"),
              accountEmail: Text("triarta.2@undiksha.ac.id"),
              currentAccountPicture: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://github.com/triartainyoman/profile/blob/main/Triarta.png?raw=true"),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/bg_profile.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            ListTile(
              title: Text("Notification"),
              trailing: Icon(Icons.notifications_none),
            ),
            ListTile(
              title: Text("Wishlist"),
              trailing: Icon(Icons.bookmark_border),
            ),
            ListTile(
              title: Text("Account"),
              trailing: Icon(Icons.verified_user),
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              title: Text("Settings"),
              trailing: Icon(Icons.settings),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Beranda"),
      ),
    );
  }
}
