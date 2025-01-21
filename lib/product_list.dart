import 'package:flutter/material.dart';
import 'package:shoppingapp/global_variables.dart';
import 'package:shoppingapp/product_card.dart';
import 'package:shoppingapp/product_details_page.dart';

class ProductList extends StatefulWidget {
  const ProductList ({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<String> filters = const [
    'All',
    'Prints',
    'Mugs',
    'Ribbon',
    'Bags',
    'GLK',
  ];
  late String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];
  }
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
      ),
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(100),
      ),
    );
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'House of Binky',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: filters.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final filter = filters[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedFilter = filter;
                      });
                    },
                    child: Chip(
                      backgroundColor: selectedFilter == filter
                          ? Theme.of(context).colorScheme.primary
                          : Color.fromRGBO(245, 247, 249, 1),
                      side: const BorderSide(
                        color: Color.fromRGBO(245, 247, 249, 1),
                      ),
                      label: Text(filter),
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ProductDetailsPage(product: product);
                    }));
                  },
                  child: ProductCard(
                    title: product['title'] as String,
                    price: product['price'] as double,
                    image: product['image'] as String,
                    backgroundColor: index.isEven
                        ? const Color.fromRGBO(147, 200, 243, 1.0)
                        : Color.fromRGBO(211, 143, 205, 1.0),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}