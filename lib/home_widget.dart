import 'package:flutter/material.dart';
import 'package:travel_app/pages.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _childreen = [
    HomePage(),
    ExplorePage(),
    PastTripsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Travel Budget App',
        ),
      ),
      body: _childreen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon:const Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon:const Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon:const Icon(Icons.history),
            label:'History',
          ),
        ],
      ),
    );
  }

  void onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}