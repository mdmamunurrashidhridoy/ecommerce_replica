import 'dart:convert';

import 'package:ecommerce_replica/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:http/http.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  Future fetchData() async {
    var response = await http.get(Uri.parse('https://dummyjson.com/products'))
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                'https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/primary/ProductShowcasesampleimages/JPEG/Product+Showcase-1.jpg',
                ),
            Text(
              "Nike Shoe",
              style: TextStyle(
                  fontSize: 25,
                  
                  fontFamily: 'DMSans',
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "\$5500",
              style: TextStyle(
                  fontSize: 20,
                  color: FColors.secondaryRed,
                  fontFamily: 'DMSans',
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '\$6500',
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'DMSans',
                  
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(FontAwesome.star_solid),
                Text('4.5'),
                Text('86 Review'),
                Icon(FontAwesome.ellipsis_vertical_solid)
              ],
            )
          ],
        ),
      ),
    );
  }
}
