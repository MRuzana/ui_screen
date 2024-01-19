import 'package:flutter/material.dart';
import 'package:project4/tabs/category_tab.dart';
import 'package:project4/tabs/product_tab.dart';

class Catalogue extends StatelessWidget {
  const Catalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Center(child: Text('Catalogue',
          style: TextStyle(color: Colors.white),
            )
          ),
          actions: const [
            Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(Icons.search),
          )],
          bottom: const TabBar(
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 20),
            tabs: [
              Tab(text: 'Products'),
              Tab(text: 'Categories',)
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Products(),
            Categories()
            
          ]
          
          ),
      ),

    );
  }
}