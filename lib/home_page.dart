import 'package:flutter/material.dart';
import 'package:shoppingapp/main.dart';

class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  final List<String> filters = const [
    'All',
    'Sneakers',
    'Boots',
    'Heels',
    'Sandals',
    'Flats',
  ];

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
      ),
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(100),
      ),
    );
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Shoes\nCollection',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        border: border,
                        enabledBorder: border,
                        focusedBorder: border,
                      ),
                    )
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
