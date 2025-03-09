import 'package:flutter/material.dart';
import 'package:ecommerce_replica/common/widget/app_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }
}

