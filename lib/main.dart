import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/product_screen.dart';
import 'screens/ads_screen.dart';

void main() => runApp(const MirebApp());

class MirebApp extends StatelessWidget {
  const MirebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mireb Commercial B2B',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const HomeScreen(),
        '/product': (_) => const ProductScreen(),
        '/ads': (_) => const AdsScreen(),
      },
    );
  }
}
