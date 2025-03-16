import 'package:ecommerce_replica/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:ecommerce_replica/common/widget/app_bar.dart';
import 'package:ecommerce_replica/screens/home/widgets/bottom_nav_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        title: "Mega Shop",
        firstIcon: Iconsax.notification_bing_outline,
      ),
      bottomNavigationBar: BottomNavbarCustom(),
    );
  }
}

