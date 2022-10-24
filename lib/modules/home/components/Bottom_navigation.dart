import 'package:flutter/material.dart';
import 'package:untitled/shared/models/enums/colors_enum.dart';

class BottomNavigation extends StatelessWidget {
 const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Início'

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Buscar'
            ,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_add_outlined),
              label: 'Biblioteca'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music_outlined),
              label: 'Premium'
          ),
        ],
      ),
    );
  }
}

