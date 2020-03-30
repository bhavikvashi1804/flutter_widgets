import 'package:flutter/material.dart';



class SwipeScreen extends StatelessWidget {
  
  final List<String>  items=new List<String>.generate(30, (index) => 'Items ${index+1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe'),
      ),
      body: ListView.builder(
        itemBuilder:(context,index)=>Dismissible(
          key: Key(items[index]), 
          child: ListTile(
            title: Text(items[index]),
          ),
          background: Container(
            color: Colors.red,
          ),
          onDismissed: (direction) {
            items.removeAt(index);
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('Item Dismissed')
              ),
            );
          },
        ),
        itemCount: items.length, 
      ),
    );
  }
}