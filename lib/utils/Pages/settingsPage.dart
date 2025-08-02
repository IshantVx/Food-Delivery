import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restapi/utils/theme/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(title: Text("Settings", )),
      body: Column(
        children: [

             Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(14)
              ),
              margin: const EdgeInsets.only(left:23 , right: 23),
              padding: EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dark Mode",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  CupertinoSwitch(

                      value: Provider.of<ThemeProvider>(context,)// the provider has default for true
                          .isDarkMode,
                      onChanged: (value)=>
                          Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme()
                  ),
                ],
              ),
            ),

        ],
      ),
    );
  }
}
