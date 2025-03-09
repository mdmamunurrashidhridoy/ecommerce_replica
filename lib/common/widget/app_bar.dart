import 'package:flutter/material.dart';
import 'package:ecommerce_replica/utils/constants/colors.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Amar Bazar',
        style: TextStyle(
          fontFamily: 'DMSans',
        color: FColors.oCeansBlue,
        fontWeight: FontWeight.w700,
        ),
      ),
      centerTitle: true,
      actions: [
        Container(
          padding: EdgeInsets.all(10),
          child: Icon(Iconsax.notification_bing_outline),
        ), 
        Container(
          padding: EdgeInsets.all(10),
          child: Icon(HeroIcons.shopping_cart),
        ), 
      ],
    );
  }
}
