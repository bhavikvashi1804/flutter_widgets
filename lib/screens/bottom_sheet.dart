import 'package:flutter/material.dart';


class BottomSheetScreen extends StatefulWidget {
  @override
  _BottomSheetScreenState createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  VoidCallback _showPersBottomSheetCallBack;



   @override
  void initState() {
    super.initState();
    _showPersBottomSheetCallBack = _showBottomSheet;
  }

  void _showBottomSheet() {
    setState(() {
      _showPersBottomSheetCallBack = null;
      //other screen is not clickable
    });

    _scaffoldKey.currentState
        .showBottomSheet((context) {
          return new Container(
            height: 200.0,
            color: Colors.greenAccent,
            child: new Center(
              child: new Text("Hi BottomSheet"),
            ),
          );
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              //closed bottomsheet 
              //now again open previous screen
              _showPersBottomSheetCallBack = _showBottomSheet;
            });
          }
        });
  }

  void _showModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
            color: Colors.greenAccent,
            child: new Center(
              child: new Text("Hi ModalSheet"),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text("Flutter BottomSheet"),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Center(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: _showPersBottomSheetCallBack,
              child: new Text("Persistent"),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 10.0),
            ),
            new RaisedButton(
              onPressed: _showModalSheet,
              child: new Text("Modal"),
            ),
          ],
        )),
      ),
    );
  }

  //persistent : -
  //back button is allow when you open that back button is created 
  //persistent button is disable 
  //go back by back button or swipe down


  //modal : -
  //go back by swipe down or touch anywhere

}