import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike/components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //selected index
  int _selectedIndex = 0;

  //Navigate using selected index
  navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) =>
        { navigateBottomBar(index)
        },
      ),
    );
  }

}
