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
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
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
