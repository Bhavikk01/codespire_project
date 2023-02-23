import 'package:codespire_app/app/widgets/main_page.dart';
import 'package:codespire_app/app/widgets/post_section.dart';
import 'package:codespire_app/app/widgets/shopping_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import '../widgets/donation_page.dart';

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
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: screens[_selectedItemPosition],
            ),
            Positioned(
              bottom: 12,
              child: SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: SnakeNavigationBar.color(
                  backgroundColor: Colors.white.withOpacity(0.5),
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
                    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_cart), label: 'shopping Cart'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.account_circle), label: 'profile')
                  ],
                  selectedLabelStyle: const TextStyle(fontSize: 14),
                  unselectedLabelStyle: const TextStyle(fontSize: 10),
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
