import 'package:ecommerce_replica/screens/home/pages/home_screen.dart';
import 'package:ecommerce_replica/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:ecommerce_replica/common/widget/app_bar.dart';
import 'package:ecommerce_replica/screens/home/widgets/bottom_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _homeScreen = [
    HomeScreen(),
    Container(
      height: double.infinity,
      color: Colors.deepOrange,
    ),
    Container(
      height: double.infinity,
      color: Colors.purple,
    ),
    Container(
      height: double.infinity,
      color: Colors.lime,
    ),

  ];
  void _onTapMethod(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        title: "Mega Shop",
        firstIcon: Iconsax.notification_bing_outline,
      ),
      body: _homeScreen[_currentIndex],
      bottomNavigationBar: BottomNavbarCustom(currentIndex: 0,onTapMethod: _onTapMethod,),
    );
  }
}

