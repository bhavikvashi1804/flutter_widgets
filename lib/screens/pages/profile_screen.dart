import 'package:flutter/material.dart';


class ProfileScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text(
          'Your profile comes here.'
        ),
      ),
      
    );
  }
}