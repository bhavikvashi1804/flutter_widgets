import 'package:flutter/material.dart';

class FABScreen extends StatefulWidget {
  @override
  _FABScreenState createState() => _FABScreenState();
}

class _FABScreenState extends State<FABScreen> {
  String mytext = "Apple";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Floating Action Button"),
      ),
      body: _bodyWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }

  void _changeText() {
    setState(() {
      if (mytext == "Apple") {
        mytext = "Banana";
      } else {
        mytext = "Apple";
      }
    });
  }

  Widget _bodyWidget() {
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            mytext,
            style: TextStyle(color: Colors.black, fontSize: 20.0),
          ),
          RaisedButton(
            child: Text(
              "Tap",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: _changeText,
            color: Colors.red,
          )
        ],
      ),
    ));
  }
}
