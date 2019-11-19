import 'package:flutter/material.dart';
import 'package:moneify/funtionpackage/homepage.dart';
import 'package:moneify/funtionpackage/categorypage.dart';
import 'package:moneify/funtionpackage/reportpage.dart';

class AppScreen extends StatefulWidget {
  static String id = 'AppScreen';
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    CategoryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(' '),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            title: Text(' '),
          ),
        ],
        selectedItemColor: Colors.blueAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
