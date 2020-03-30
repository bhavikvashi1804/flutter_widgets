import 'package:flutter/material.dart';

import '../screens/pages/profile_screen.dart';
import '../screens/pages/timeline_screen.dart';


class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountEmail: Text("bhavikvashi@hotmail.com"),
              accountName: Text("Bhavik"),
              
              currentAccountPicture:CircleAvatar(
                backgroundColor: Colors.amberAccent,
                child: Text('BV'),
              ) ,
            ),
          ),

          ListTile(
            title: Text('Timeline'),
            leading: Icon(Icons.timeline),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx)=>TimelineScreenPage())
              );
            },
            
          ),
          Divider(),


          ListTile(
            title: Text('Profile'),
            leading: Icon(Icons.account_circle),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx)=>ProfileScreenPage())
              );
            },
            
          ),
          Divider(),
        ],
      ),
      
    );
  }
}