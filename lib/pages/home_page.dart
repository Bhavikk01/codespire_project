import 'package:codespire_app/pages/donation_page.dart';
import 'package:codespire_app/pages/main_page.dart';
import 'package:codespire_app/pages/post_section.dart';
import 'package:codespire_app/pages/shopping_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;

  int _selectedItemPosition = 1;
  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  Color selectedColor = Colors.black;
  Color unselectedColor = Colors.blueGrey;

  Gradient selectedGradient =
      const LinearGradient(colors: [Colors.red, Colors.amber]);
  Gradient unselectedGradient =
      const LinearGradient(colors: [Colors.red, Colors.blueGrey]);

  Color? containerColor;
  List<Color> containerColors = [
    const Color(0xFFFDE1D7),
    const Color(0xFFE4EDF5),
    const Color(0xFFE7EEED),
    const Color(0xFFF4E4CE),
  ];
  List<Widget> screens = [
    const PostSection(),
    const MainPage(),
    const ShoppingPage(),
    const DonationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[_selectedItemPosition],
        bottomNavigationBar: Stack(
          children: [
            SnakeNavigationBar.color(
              backgroundColor: /*Color.fromRGBO(64, 66, 94, 1).withOpacity(0.7)*/
                  Colors.grey.withOpacity(0.2),
              behaviour: snakeBarStyle,
              height: 52,
              snakeShape: snakeShape,
              shape: bottomBarShape,
              padding: EdgeInsets.only(
                top: 2.h,
                bottom: 2.h,
                left: 30.h,
                right: 30.h,
              ),
              snakeViewColor: selectedColor,
              selectedItemColor:
                  snakeShape == SnakeShape.indicator ? selectedColor : null,
              unselectedItemColor: unselectedColor,
              showUnselectedLabels: showUnselectedLabels,
              showSelectedLabels: showSelectedLabels,
              currentIndex: _selectedItemPosition,
              onTap: (index) => setState(() => _selectedItemPosition = index),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.camera_alt,
                    ),
                    label: 'add'),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: 'shopping_cart'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle), label: 'profile')
              ],
              selectedLabelStyle: const TextStyle(fontSize: 14),
              unselectedLabelStyle: const TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
