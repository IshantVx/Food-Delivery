import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});


  @override
  Widget build(BuildContext context) {
    var myPrimaryTextColor = TextStyle(color: Theme.of(context).colorScheme.primary);
    var mySecondaryTextColor = TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    return Container(
      decoration:BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(right: 25, left: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text("NRs 40",style: myPrimaryTextColor,),
              Text("Delivery fee",style: mySecondaryTextColor,),
            ],
          ),
          Column(
            children: [
              Text("15-30 min",style: myPrimaryTextColor,),
              Text("Delivery time",style: mySecondaryTextColor,),
            ],

          ),
        ],
      ),
    );
  }
}
