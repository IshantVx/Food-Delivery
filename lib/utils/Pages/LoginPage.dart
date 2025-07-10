import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:restapi/utils/componant/custom_widget/my_button.dart';
import 'package:restapi/utils/componant/custom_widget/my_textField.dart';
import 'package:restapi/utils/constants/sizes.dart';
import 'package:restapi/utils/constants/spaces.dart';
import 'package:restapi/utils/theme/light_mode.dart';

import 'RegisterPage.dart';
import 'homePage.dart';

class longinPage extends StatefulWidget {
  final void Function()? onTap;
  const longinPage({super.key, required this.onTap});

  @override
  State<longinPage> createState() => _longinPageState();
}

class _longinPageState extends State<longinPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscure = true;

  Future postLogin() async {
    final response = await http.post(
      Uri.parse(
        'https://api-barrel.sooritechnology.com.np/api/v1/user-app/login',
      ),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: json.encode({
        "userName": userNameController.text,
        "password": passwordController.text,
      }),
    );
    if (response.statusCode == 200) {
      log(response.statusCode.toString());
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => homePage()),
      );
    } else {
      Fluttertoast.showToast(msg: "Invalid");
    }
    return response;
  }

  void _validation() {
    if (userNameController.text.isEmpty) {
      Fluttertoast.showToast(msg: "Please Enter the email");
    } else if (passwordController.text.isEmpty) {
      Fluttertoast.showToast(msg: "Please Enter the Password");
    } else {
      postLogin();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> homePage()));
              }, child: Text("Skip",)
              ),
            ),
          Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    //when i add my textbutton inside align children child colum body center child sccaffold retrurn safearea
                    //logo
                    Icon(
                      Icons.lock_open_rounded,
                      size: 100,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    ISpace.v24,
                    Text(
                      "Get your food at your doorsteps",
                      style: TextStyle(
                        fontSize: ISizes.fontMd,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    ISpace.v44,
          
                    // TextField(
                    //   controller: userNameController,
                    //   decoration: InputDecoration(
                    //     hintText: "Enter your Email/Phone Number",
                    //     prefixIcon: Icon(Icons.email),
                    //     hintStyle: TextStyle(color: Colors.black38),
                    //     border: OutlineInputBorder(),
                    //   ),
                    // ),
                    MytextField(
                      controller: userNameController,
                      hintText: "Email",
                      obscureText: false,
                      prefixIcon: Icon(Icons.email),
                      suffixIcon: null,
                    ),
                    SizedBox(height: 14),
          
                    MytextField(
                      controller: passwordController,
                      hintText: "Password",
                      obscureText: _obscure,
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscure = !_obscure;
                          });
                        },
                        child: _obscure
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                    ),
                    // TextField(
                    //   // password text field
                    //   controller: passwordController,
                    //   obscureText: _obscure,
                    //   decoration: InputDecoration(
                    //     prefixIcon: Icon(Icons.password),
                    //     suffixIcon: GestureDetector(
                    //       onTap: () {
                    //         setState(() {
                    //           _obscure = !_obscure;
                    //         });
                    //         log("I am click");
                    //       },
                    //       child: _obscure
                    //           ? Icon(Icons.visibility)
                    //           : Icon(Icons.visibility_off),
                    //     ),
                    //     hintText: "Enter your password",
                    //     hintStyle: TextStyle(color: Colors.black38),
                    //     border: OutlineInputBorder(),
                    //   ),
                    // ),
                    SizedBox(height: 24),
                    MyButton(text: "Sign In" ,
                      onTap: _validation,
                    ),
                    SizedBox(height: 18,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            fontSize: ISizes.fontMd
                          ),
                        ),
                        GestureDetector(
                          onTap: widget.onTap,
          
                          child: Text(
                            "Register now",
                            style: TextStyle(color: Theme.of(context).colorScheme.tertiary,
                              fontWeight: FontWeight.bold,
                              fontSize: ISizes.fontMd
                            ),
                          ),
                        )
                      ]
                    )
                  ],
                ),
              ),
          ]
        ),


      ),
    );
  }
}
