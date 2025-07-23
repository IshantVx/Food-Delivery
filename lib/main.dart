

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restapi/newPage.dart';
import 'package:restapi/utils/Pages/LoginPage.dart';
import 'package:restapi/utils/Pages/RegisterPage.dart';
import 'package:restapi/utils/auth/loggin_or_registor.dart';
import 'package:restapi/utils/models/restaurant.dart';
import 'package:restapi/utils/theme/theme_provider.dart';

void main() {
  runApp(
      MultiProvider(providers: [
        //theme Provider
        ChangeNotifierProvider(create: (context)=> ThemeProvider()),
        //Restaurant Provider
        ChangeNotifierProvider(create: (context)=> Restaurant())
      ],
        child: const MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: LoginOrRegister()
    );
  }
}


