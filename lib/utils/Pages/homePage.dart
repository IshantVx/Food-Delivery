import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restapi/utils/componant/custom_widget/my_drawer.dart';
import 'package:restapi/utils/componant/custom_widget/my_sliver_appBar.dart';
import 'package:restapi/utils/componant/custom_widget/my_tabBar.dart';

import '../componant/custom_widget/my_current_location.dart';
import '../componant/custom_widget/my_descriptionBox.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}


class _homePageState extends State<homePage> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder:(context, innerBoxIsScrolled) => [
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
                )
            )
          ] ,
          body: TabBarView(
            controller: _tabController,
            children:[
              ListView.builder(
                  itemCount: 13,
                  itemBuilder: (context, index)=> Text("home")
              ),
              ListView.builder(
                  itemCount: 13, 
                  itemBuilder: (context,index)=> Text("Settings") 
              ),
              ListView.builder(
                  itemCount: 13,
                  itemBuilder: (context, index)=> Text("Profile")
              )
            ]
          )
      )
    );
  }
}
