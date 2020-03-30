import 'package:flutter/material.dart';


class AlertDialogScreen extends StatefulWidget {

  @override
  _AlertDialogScreenState createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {

  String value='Please open Altert Dialog';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(value),
          Center(
            child: MaterialButton(
              onPressed: (){
                return showDialog(
                  context: context,
                  builder: (ctx)=>AlertDialog(
                    title: Text('Are you sure?'),
                    content: Text('Do you want to remove the item from the cart?'),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: (){
                          Navigator.of(ctx).pop(false);
                          setState(() {
                            value='You have selcted No';
                          });
                        } ,
                        child: Text('No')
                      ),
                      FlatButton(
                        onPressed: (){
                          Navigator.of(ctx).pop(true);
                          setState(() {
                            value='You have selected Yes';
                          });
                        },
                        
                        child: Text('Yes'),
                      ),
                      
                    ],

                  ),
                );
               
              },
              child: Text('Show Alert'),
              color: Colors.cyanAccent,
            ),
          ),
        ],
      )
    );
  }
}
