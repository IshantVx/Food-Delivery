import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restapi/utils/Pages/settingsPage.dart';
import 'package:restapi/utils/auth/loggin_or_registor.dart';
import 'package:restapi/utils/componant/custom_widget/my_listTile.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .surface,
      child: Column(
          children: [

      //logo
      Padding(
      padding: const EdgeInsets.only(top: 90),
      child: Icon(Icons.lock_open_rounded,
        size: 80,
        color: Theme
            .of(context)
            .colorScheme
            .primary,
      ),
    ),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 14),
    child: Divider(color: Theme.of(context).colorScheme.primary,),
    ),

    //home list title
    MyListTile(
    text: "Home",
    icon: Icons.home,
    onTap: ()=>Navigator.pop(context)
    ),
    //settings list title
    MyListTile(
    text: "Settings",
    icon: Icons.settings,
    onTap: (){
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context)=> SettingsPage()
          ));
    }),
    //logout list title
    const Spacer(),
    MyListTile(
        text: "LogOut",
        icon: Icons.logout,
        onTap: (){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context)=>LoginOrRegister()));
        })
    ]
    )
    ,
    );
  }
}
