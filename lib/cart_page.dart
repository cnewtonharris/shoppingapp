import 'package:flutter/material.dart';
import 'package:shoppingapp/global_variables.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, index){
            final cartItem = cart[index];

            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(cartItem['image'].toString()),
                radius: 30,
              ),
              title: Text(
                  cartItem['title'].toString()
              ),
              subtitle: Text('Size: ${cartItem['size']}' + '\n' + 'Price: \$${cartItem['price']}'),
            );
        },
      ),
    );
  }
}
