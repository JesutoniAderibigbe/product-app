import 'package:app_new/fresh.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _kTabPages=<Widget>[
      Center(child: FreshPage()),
      Center(child: Text("Hotspot")),

    ];
    final _kTabs=<Tab>[
      Tab(child: Text("Recently added")),
      Tab(child: Text("Hot"))

    ];
    return DefaultTabController(
      length: _kTabs.length, 
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        bottom: TabBar(
          tabs: _kTabs,
          labelColor: Colors.black,),
        actions: <Widget>[
          IconButton(onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          }, icon: Icon(Icons.search))
        ],
        
      ),
      drawer: Drawer(),
      body:
      TabBarView(
        children: _kTabPages,
        
        ),
      
     ) );
    
  }
}

class DataSearch extends SearchDelegate<String>{

  final phones =[
        "Iphone6",
         "Iphone7",
          "Iphone8",
           "Iphone10",
            "Iphone12 pro",
             "Iphone13 pro",
              "Iphone 13",
              
          

  ];
  final recentphones =[
        "Iphone6",
            "Iphone10",
             "Iphone13",
  ];
  

  @override
  List<Widget>? buildActions(BuildContext context) {
   return[
     IconButton(onPressed: () {
       query='';
     }, icon: Icon(Icons.clear),)
   ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return  IconButton(icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
                onPressed: () {
                
                },                      );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   final suggestionList= query.isEmpty?recentphones:phones.where((p)=>p.startsWith(query)).toList();

   return ListView.builder(itemBuilder:((context, index) => ListTile(
     leading: Icon(Icons.location_city),
     title: RichText(text: TextSpan(
       text:suggestionList[index].substring(0,query.length),
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        children: [TextSpan(
          text: suggestionList[index].substring(query.length),
          style: TextStyle(color:Colors.grey)
        )] ))
   )),
  itemCount: suggestionList.length );
  }

}





