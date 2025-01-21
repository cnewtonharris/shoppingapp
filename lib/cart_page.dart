import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';
import 'global_variables.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
      print(Provider.of<CartProvider>(context).cart);
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
              trailing: IconButton(
                  onPressed: (){},
                  icon: const Icon(
                      Icons.delete),
                      color: Colors.red,
              ),
              title: Text(
                  cartItem['title'].toString(), style: Theme.of(context).textTheme.titleMedium
              ),
              subtitle: Text('Size: ${cartItem['size']}' + '\n' + 'Price: \$${cartItem['price']}'),
            );
        },
      ),
    );
  }
}
