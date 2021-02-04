import 'package:flutter/material.dart';
//classses
import './PerTest.dart';
import './HomePage.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Navigation Menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/Panda.jpeg'),
              ),
            ),
          ),
          // ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Homepage'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }),
          ListTile(
              leading: Icon(Icons.scanner),
              title: Text('Personality Test'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PerTest()),
                );
              }),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings here at some point'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
