import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:icons_plus/icons_plus.dart';
import 'package:ecommerce_replica/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<Map<String, dynamic>> fetchData() async {
    var response = await http.get(Uri.parse('https://dummyjson.com/products/1'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body); // Return parsed JSON
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: FutureBuilder<Map<String, dynamic>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final data = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    data['thumbnail'] ?? 'https://via.placeholder.com/150',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    data['title'] ?? 'Product Title',
                    style: const TextStyle(
                        fontSize: 25,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$${data['price'] ?? '0'}",
                    style: TextStyle(
                        fontSize: 20,
                        color: FColors.secondaryRed,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$${(data['price'] * 1.2).toStringAsFixed(2)}", // Assuming original price before discount
                    style: const TextStyle(
                        fontSize: 17,
                        decoration: TextDecoration.lineThrough,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(FontAwesome.star_solid, color: Colors.amber),
                      const SizedBox(width: 5),
                      Text('${data['rating'] ?? "0"}'),
                      const SizedBox(width: 10),
                      Text('${data['stock'] ?? "0"} in stock'),
                      const Spacer(),
                      const Icon(FontAwesome.ellipsis_vertical_solid),
                    ],
                  )
                ],
              ),
            );
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}