import 'package:ecommerce_replica/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:ecommerce_replica/common/widget/app_bar.dart';

class BottomNavbarCustom extends StatelessWidget {
  const BottomNavbarCustom({super.key, required this.currentIndex, required this.onTapMethod});
  final int currentIndex;
  final Function(int) onTapMethod;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontSize: 9),
        unselectedLabelStyle: TextStyle(fontSize: 9),
        type: BottomNavigationBarType.fixed,
        onTap: onTapMethod,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.home_outline,
              size: 20,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.heart_outline,
              size: 20,
            ),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.shopping_bag_outline,
              size: 20,
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesome.user,
              size: 20,
            ),
            label: 'Login',
          ),
        ]);
  }
}
