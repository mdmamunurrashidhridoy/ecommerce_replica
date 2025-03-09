import 'package:flutter/material.dart';
import 'package:ecommerce_replica/utils/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Amar Bazar',
          style: TextStyle(
            fontFamily: 'DMSans',
          color: FColors.oCeansBlue,
          fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
