import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restapi/utils/Pages/homePage.dart';
import 'package:restapi/utils/auth/loggin_or_registor.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot){
            //user is logged in
            if(snapshot.hasData){
              return homePage();
            }
            //user is not logged in
            else{
              return LoginOrRegister();
            }
          }
      ),
    );
  }
}
