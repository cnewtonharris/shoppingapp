import 'package:flutter/material.dart';
import 'package:shoppingapp/cart_page.dart';
import 'package:shoppingapp/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentPage = 0;

  List<Widget> pages = const [
    ProductList(),
    CartPage(),
  ];

  @override

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: '',
          ),
        ],
      ),
    );
  }
}
