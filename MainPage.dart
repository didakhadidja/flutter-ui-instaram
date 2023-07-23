import 'package:flutter/material.dart';
import 'package:flutter_instagram/Screens/HomePage.dart';
import 'package:flutter_instagram/Screens/ProfilPage.dart';
import 'package:flutter_instagram/Screens/SearchPage.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<Widget> _pages=[
    HomePage(),
    SearchPage(),
    HomePage(),
    HomePage(),
    ProfilPage(),
  ];

  int _selectedIndex=0;

  void _OnTapeedItem(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,size: 35,),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.black,size: 35,),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/Reels.svg",color: Colors.black,width: 25,),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/Shop.svg",color: Colors.black,width: 25,),
              label: ""
          ),
          BottomNavigationBarItem(
            label: "",
            icon: CircleAvatar(
              radius: 17,
              backgroundImage: AssetImage("assets/images/jose-alejandro-cuffia-k1LNP6dnyAE-unsplash 1.png"),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: _OnTapeedItem,
        selectedItemColor: Colors.redAccent,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
