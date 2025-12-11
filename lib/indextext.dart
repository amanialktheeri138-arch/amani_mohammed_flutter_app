import 'package:flutter/material.dart';
import 'about.dart';


import 'homepage.dart';


class Indexpage extends StatefulWidget {
  const Indexpage({super.key});

  @override
  State<Indexpage> createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> {
  int _bottomNavbar=0;




  List<Widget>_pages=[
    Hompage(),

    AboutPage(),


  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: IndexedStack(
        index: _bottomNavbar,
        children:_pages ,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavbar,
        onTap: (index){
          setState(() {
            _bottomNavbar=index;
          });
        },
        unselectedItemColor: Colors.grey[600],
        selectedItemColor: Colors.pinkAccent,
        items: [
          BottomNavigationBarItem(label: 'الرئيسية', icon: Icon(Icons.home)),

          BottomNavigationBarItem(label: 'من نحن', icon: Icon(Icons.person)),

        ],
      ),
    );
  }
}

