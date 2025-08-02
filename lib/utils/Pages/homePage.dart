import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restapi/utils/Pages/foodPage.dart';
import 'package:restapi/utils/componant/custom_widget/my_currentLocation.dart';
import 'package:restapi/utils/componant/custom_widget/my_drawer.dart';
import 'package:restapi/utils/componant/custom_widget/my_foodTile.dart';
import 'package:restapi/utils/componant/custom_widget/my_sliver_appBar.dart';
import 'package:restapi/utils/componant/custom_widget/my_tabBar.dart';
import 'package:restapi/utils/models/foodMenu.dart';
import 'package:restapi/utils/models/restaurant.dart';

import '../componant/custom_widget/my_current_location.dart';
import '../componant/custom_widget/my_descriptionBox.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage>
    with SingleTickerProviderStateMixin {// it is for the tab to be able to run smooth for sliding into another tab
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      length: FoodCategories.values.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // sort out and return the category of specific food
  List<Food> _filterMenuCategory(FoodCategories category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.categories == category).toList();
  }


  //return list of the food in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategories.values.map((category) {
      // get categories menu
      List<Food> categoriesMenu = _filterMenuCategory(category, fullMenu);
      return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: categoriesMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          // get individual food details
          final food = categoriesMenu[index];
          // return foodTile UI
          return MyFoodTile(food: food, onTap: ()=> Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context)=> MyFoodPage(
                      food: food
                  )))
          );
        },

      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppbar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                // current location
                MyCurrentLocation(),
                // description box
                MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(builder: (context,restaurant,child)=>TabBarView(
          controller: _tabController,
          children: getFoodInThisCategory(restaurant.menu),
        ))
      ),
    );
  }
}
