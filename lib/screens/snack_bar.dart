import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar'),
      ),
      body: SnackBarPage(),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
            Scaffold.of(context)
              .showSnackBar(
                SnackBar(
                  content: Text(
                    'SnackBar'
                  ),
                )
              );
          },
          child: Text('Show Snackbar'),
          color: Theme.of(context).primaryColor,
        ),
    );
  }
}
