import 'package:flutter/material.dart';
import 'package:ecommerce_replica/screens/home/pages/home.dart';

void main() {
  runApp(MyEcom());
}

class MyEcom extends StatelessWidget {
  const MyEcom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Ecom',
      home: Home(),
    );
  }
}
