import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restapi/utils/componant/custom_widget/my_button.dart';
import 'package:restapi/utils/componant/custom_widget/my_cartTile.dart';
import 'package:restapi/utils/models/restaurant.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, Restaurant, child) {
        //cart
        final userCart = Restaurant.cart;
        //scaffold Ui
        return Scaffold(
          appBar: AppBar(
            title: Text('My Cart'),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                tooltip: "Clear the entire cart",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Are you sure you want to clear the cart"),
                      actions: [
                        //cancel button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Cancel"),
                        ),
                        // yes clear
                        ElevatedButton(
                          onPressed: () {
                            Restaurant.clearCart();
                            Navigator.pop(context);
                          },
                          child: Text("Clear it all"),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(Icons.remove_shopping_cart_outlined),
              ),
            ],
          ),
          body: Column(
            children: [
              userCart.isEmpty
                  ? Expanded(child: Center(child: Text("Your cart is empty")))
                  : Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          // get individual cart item
                          final cartItem = userCart[index];
                          // return card tile UI
                          return MyCartTile(
                            food: cartItem.food,
                            cartItem: cartItem,
                          );
                        },
                      ),
                    ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.primary,
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Total: ${Restaurant.getTotalPrice()}"),
                    MyButton(text: "Check Out", onTap: () {}),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
