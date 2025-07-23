import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restapi/utils/models/foodMenu.dart';

class MyTabBar extends StatelessWidget {
  final TabController  tabController;
   MyTabBar({
    super.key,
    required this.tabController
  });
   List<Tab> _buildCategoriesTab(){
     return FoodCategories.values.map((category){
       return Tab(
         text: category.toString().split('.').last,
       );
     }).toList();
   }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoriesTab(),
      ),
    );
  }
}
