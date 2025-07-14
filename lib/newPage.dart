import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restapi/utils/componant/custom_widget/my_textField.dart';

class newPage extends StatefulWidget {
  const newPage({super.key});

  @override
  State<newPage> createState() => _newPageState();
}

class _newPageState extends State<newPage> {
  TextEditingController sum1 = TextEditingController();
  TextEditingController sum2 = TextEditingController();
  double result = 0.0;

  void divide (){
    double num1 = double.parse(sum1.text);
    double num2 = double.parse(sum2.text);

    setState(() {
      result = num1 % num2;
    });
  }
  void substract (){
    double Sub1 = double.parse(sum1.text);
    double Sub2 = double.parse(sum2.text);
    setState(() {
      result = Sub1 - Sub2;
    });
  }
  void plus (){
    double plus1 = double.parse(sum1.text);
    double plus2 = double.parse(sum2.text);
    setState(() {
      result = plus1 + plus2;
    });
  }
  void multiply () {
    double multiply1 = double.parse(sum1.text);
    double multiply2 = double.parse(sum2.text);
    result = multiply1 * multiply2;
    setState(() {
      result = multiply1 * multiply2;
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              MytextField(controller: sum1,
                  hintText: "Enter Your first sum",
                  obscureText: false),
              MytextField(controller: sum2,
                  hintText: "Enter your second sum",
                  obscureText: false),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      divide();
                    });
                  },
                  child: Text("Multiply")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      multiply();
                    });
                  },
                  child: Text("Minus")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      substract();
                    });
                  },
                  child: Text("Plus")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      plus();
                    });
                  },
                  child: Text("Devide")),
              Text(result.toString()),

            ],
          ),
        ),
      ),
    );
  }}