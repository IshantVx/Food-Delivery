import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restapi/utils/constants/spaces.dart';

import '../componant/custom_widget/my_button.dart';
import '../componant/custom_widget/my_textField.dart';
import '../constants/sizes.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Icon(
                    Icons.lock_open_rounded,
                    size: 100,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                ISpace.v24,
                Text(
                  "Lets create an account to get started",
                  style: TextStyle(
                    fontSize: ISizes.fontMd,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                ISpace.v32,
          
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
                  controller: fullNameController,
                  hintText: "Full Name",
                  obscureText: false,
                  prefixIcon: Icon(Icons.person),
                ),
                ISpace.v12,
                MytextField(
                  controller: userNameController,
                  hintText: "Email",
                  obscureText: false,
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: null,
                ),
                ISpace.v12,
                MytextField(
                  controller: phoneNumberController,
                  hintText: "Phone",
                  obscureText: false,
                  prefixIcon: Icon(Icons.phone_android),
                  suffixIcon: null,
                ),
                ISpace.v12,
          
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
                ISpace.v12,
                MytextField(
                  controller: confirmPasswordController,
                  hintText: "Email",
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
                ISpace.v16,
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
                MyButton(text: "Sign Up"),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: ISizes.fontMd,
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
          
                      child: Text(
                        "Sign In now",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontWeight: FontWeight.bold,
                          fontSize: ISizes.fontMd,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
