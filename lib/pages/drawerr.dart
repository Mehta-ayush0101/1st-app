import 'package:flutter/material.dart';


class Draw extends StatelessWidget {
  const Draw({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Mehta Ayush'),
              accountEmail: Text('mehtaayush2000@gmail.com'),
              currentAccountPicture: ClipOval(
                child: CircleAvatar(
                  child: Image.network(
                    'https://staticg.sportskeeda.com/editor/2024/02/bdc26-17086644168846-1920.jpg?w=640',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    'https://img.freepik.com/free-photo/hand-holding-smartphone-futuristic-abstract-illuminate-line-dot-wireless-connection-wave-with-triangle-bright-blue-background-mobile-banking-shopping-online-concept-technology-future_493343-29987.jpg?semt=ais_hybrid'),
                fit: BoxFit.cover,
              )),
            ),
            SizedBox(
              height: 8,
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorite'),
            ),
            SizedBox(
              height: 8,
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
            ),
            SizedBox(
              height: 8,
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Policies'),
            ),
            SizedBox(
              height: 8,
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'),
              trailing: ClipOval(
                child: Container(
                  color: Colors.black,
                  width: 20,
                  height: 20,
                  child: Center(
                      child: Text(
                    '8',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            SizedBox(
              height: 8,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Exit'),
            ),
          ],
        ),
      
    );
  }
}
