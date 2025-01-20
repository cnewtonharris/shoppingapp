import 'package:flutter/material.dart';
import 'package:shoppingapp/product_card.dart';
import 'package:shoppingapp/global_variables.dart';
import 'package:shoppingapp/product_details_page.dart';
import 'package:shoppingapp/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentPage = 0;

  @override

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ProductList(),
      bottomNavigationBar: BottomNavigationBar(
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
