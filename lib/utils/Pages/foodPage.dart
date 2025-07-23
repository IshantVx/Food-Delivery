import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restapi/utils/componant/custom_widget/my_button.dart';
import 'package:restapi/utils/constants/sizes.dart';
import 'package:restapi/utils/constants/spaces.dart';
import 'package:restapi/utils/models/foodMenu.dart';

class MyFoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons ={};

   MyFoodPage({
    super.key,
    required this.food,
  }){
     // initializing the selected addons to be false at the begining
  for(Addon addon in food.availableAddon){
    selectedAddons[addon] = false;
  }
   }

  @override
  State<MyFoodPage> createState() => _MyFoodPageState();
}

class _MyFoodPageState extends State<MyFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
        body : SingleChildScrollView(
          child: Column(
            children: [
                  Image.asset(widget.food.imagePath),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    //food image
                   //food name
                    Text(widget.food.name,style: TextStyle(fontSize: ISizes.fontXl,fontWeight: FontWeight.bold),),
                    //food price
                    Text("NRs ${widget.food.price}", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                    ISpace.v16,
          
                    //food description
                    Text(widget.food.description, style: TextStyle(fontSize: ISizes.fontMd, color: Theme.of(context).colorScheme.primary)),
                    ISpace.v16,
                  Divider(
                    color: Theme.of(context).colorScheme.secondary,
                    indent: 25,
                    endIndent: 25,
                  ),
                    Text("Addons", style: TextStyle(color: Theme.of(context).colorScheme.primary , fontSize: 16 , fontWeight: FontWeight.bold),),
                    ISpace.v16,
          
                    //addons
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Theme.of(context).colorScheme.secondary),
                        ),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableAddon.length,
                          itemBuilder: (context,index){
                            Addon addon = widget.food.availableAddon[index];
                            return CheckboxListTile(
      
                                title: Text(addon.name, style:  TextStyle(color: Theme.of(context).colorScheme.primary),),
                                subtitle: Text("NRs ${addon.price}", style:  TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),
                                value: widget.selectedAddons[addon],
                                onChanged: (value){
                                  setState((){
                                    widget.selectedAddons[addon] = value!;
                                  });
                                }
                            );
                          },
                        ),
                      ),
                    ),
                    ISpace.v16,
                    MyButton(text: 'Add to Cart', onTap: (){},)
                    // button too add to cart
                    ],
              ),
            ),
          ]
          ),
        ),
      ),
        SafeArea(
          child: Opacity(
            opacity: 0.5,
            child: Container(
              margin: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
            
                color: Theme.of(context).colorScheme.secondary,),
              child: IconButton(
                  onPressed: ()=> Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,color: Theme.of(context).colorScheme.primary,
                  )
              )
            ),
          ),
        )
      ]
    );
  }
}
