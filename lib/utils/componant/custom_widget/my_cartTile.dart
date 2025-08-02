import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restapi/utils/componant/custom_widget/my_quantity_selector.dart';
import 'package:restapi/utils/models/restaurant.dart';

import '../../models/cartItems.dart';
import '../../models/foodMenu.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  final Food food;

  const MyCartTile({super.key, required this.cartItem, required this.food});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, Restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                children: [
                  // food image
                  Container(
                    margin: EdgeInsets.all(9),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(cartItem.food.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //name and price
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // food name
                          Text(cartItem.food.name),
                          // food price
                          Text(
                            "NRs ${cartItem.food.price}",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // increment or decrement
                  MyQuantitySelector(
                    food: cartItem.food,
                    quantity: cartItem.quantity,
                    onIncrement: () {
                      Restaurant.addToCart(
                        cartItem.food,
                        cartItem.selectedAddons,
                      );
                    },
                    onDecrement: () {
                      Restaurant.removeFromCart(
                        cartItem,
                        cartItem.selectedAddons,
                      );
                    },
                  ),
                ],
              ),
            ),
            // addons
            SizedBox(

              height: cartItem.selectedAddons.isNotEmpty ? 50 : 0,
              child: ListView(

                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 9 , right: 9, bottom: 9),
                children: cartItem.selectedAddons
                    .map((addon) =>
                          Padding(
                            padding: const EdgeInsets.only(right: 9),
                            child: FilterChip(label: Row(

                              children: [
                                // addon name
                                Text(addon.name),
                                // addon price
                                Text( " (NRs: ${addon.price.toString()})", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                              ],
                            ),
                                shape: StadiumBorder(
                                  side: BorderSide(
                                    color: Theme.of(context).colorScheme.primary,
                                  )
                                ),
                                backgroundColor: Theme.of(context).colorScheme.secondary,
                                onSelected: (value){

                            }),
                          ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
