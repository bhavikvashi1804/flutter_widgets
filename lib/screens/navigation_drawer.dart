import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class NavigationDrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      body: Center(
        child: Text('Example of Navigation Drawer'),
      ),
      drawer: AppDrawer(),
      
    );
  }
}