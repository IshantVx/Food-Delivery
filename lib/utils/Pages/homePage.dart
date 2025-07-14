import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restapi/utils/componant/custom_widget/my_drawer.dart';
import 'package:restapi/utils/componant/custom_widget/my_sliver_appBar.dart';

import '../componant/custom_widget/my_current_location.dart';
import '../componant/custom_widget/my_descriptionBox.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
                title: Text("Home"),
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
          body: Container(
            color: Colors.blue,
          )
      )
    );
  }
}
