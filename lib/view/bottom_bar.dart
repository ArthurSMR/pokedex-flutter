import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Pokedex/pokedex.dart';
import 'feed/feed.dart';
import 'profile/profile.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentPage;
  var _pages;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;
    _pages = [PokedexView(), FeedView(), ProfileView()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_currentPage),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF2C62A9),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_baseball),
            label: "Pokedex",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department),
            label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
        ],
        currentIndex: _currentPage,
        onTap: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }
}
