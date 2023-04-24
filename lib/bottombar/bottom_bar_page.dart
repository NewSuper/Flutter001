import 'package:flutter/material.dart';
import 'package:flutter001/bottombar/first_page.dart';
import 'package:flutter001/bottombar/second_page.dart';
import 'package:flutter001/bottombar/third_page.dart';

class BottomBarPage extends StatefulWidget {
  final String title;
  const BottomBarPage({Key? key,required this.title}) : super(key: key);

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {

  int _currentIndex = 0;
  final List<Widget> _children = [const FirstPage(), const SecondPage(),const ThirdPage()];

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
      ),
    );
  }
}
