import 'package:app_example/pages/gethttp.dart';
import 'package:app_example/pages/product.dart';
import 'package:app_example/pages/quiz.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: const [SignOutButton()],
      ),
      body: IndexedStack(
        index: index,
        children: [
          const Product(),
          const Quiz(),
          GetHttp(),
          Container(color: Colors.pink)
        ],
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (value) {
            setState(() {
              index = value;
            });
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.pageview), label: 'Cart'),
            NavigationDestination(icon: Icon(Icons.umbrella), label: 'User'),
            NavigationDestination(icon: Icon(Icons.undo), label: 'Account')
          ]),
    );
  }
}
