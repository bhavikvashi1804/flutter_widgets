import 'package:flutter/material.dart';

class SearchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Search'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context: context, delegate: DataSearch());

            },
          )
        ],
      ),
      body: Center(child: Text('This is material search app'),),
      drawer: Drawer(),
      
    );
  }
}


class DataSearch extends SearchDelegate<String>{

  final gujDis=[
    'Bharuch',
    'Surat',
    'Ahmedabad',
    'Ananad',
    'Vadodara',
    'Rajkot',
    'Bhavnagar',
    'Navsari',
    'Vapi',
  ];


  final recentGujDis=[
    'Bharuch',
    'Surat',
    'Ahmedabad',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    //actions for the app bar

    return [
      IconButton(
        icon: Icon(Icons.clear), 
        onPressed: (){
          query="";
        }
      ),

    ];
    
   
  }

  @override
  Widget buildLeading(BuildContext context) {
    //leading icon on the left of the app bar
    return IconButton(
      onPressed: (){
        close(context, null);

      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow, 
        progress: transitionAnimation
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //show some result based on selection
    return Container(
      height: 100,
      child: Card(
        color: Colors.red,
        child: Center(
          child:Text(query)
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //show when someone is searching for something
    final suggestions=query.isEmpty?recentGujDis:gujDis.where((element) => element.startsWith(query)).toList();

    
    return ListView.builder(
      itemBuilder: (contex,index)=>ListTile(
        onTap: (){
          showResults(context);
        },
        leading: Icon(Icons.location_city),
        title: RichText(
          text: TextSpan(
            text:suggestions[index].substring(0,query.length),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: suggestions[index].substring(query.length),
                style: TextStyle(
                  color: Colors.grey
                )
              )
            ]
          )
          
        ),
      ),
      itemCount: suggestions.length,
    );
  }

}