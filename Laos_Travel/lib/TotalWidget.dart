// ignore: file_names
import 'package:flutter/material.dart';
import 'package:my_app/About/About.dart';
import 'package:my_app/Home/Home.dart';
import 'package:my_app/Record/Record.dart';
import 'package:my_app/Setting/Setting.dart';
import 'package:my_app/UserPost.dart';

class TotalWidget extends StatefulWidget {
  const TotalWidget({super.key});

  @override
  State<TotalWidget> createState() => _TotalWidgetState();
}

class _TotalWidgetState extends State<TotalWidget> {
  int currentIndex = 0;
  List<Widget> sunWidget = [Home(), About(), Record(), Setting()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sunWidget[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => UserPost()));
        },
        backgroundColor: Color(0xFF00abb3),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color.fromRGBO(6, 40, 61, 0.5),
        selectedItemColor: Color(0xFF06283d),
        backgroundColor: Color(0xFFf9f9f9),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        iconSize: 35,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'ໜ້າຫຼັກ',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'ໂປຣໄຟລ໌',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            activeIcon: Icon(Icons.favorite),
            label: 'ທີບັນທຶກໄວ້',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_outlined),
            activeIcon: Icon(Icons.format_list_bulleted),
            label: 'ຕັ້ງຄ່າ',
          ),
        ],
      ),
    );
  }
}
