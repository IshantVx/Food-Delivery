import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restapi/utils/componant/custom_widget/my_button.dart';
import 'package:restapi/utils/componant/custom_widget/my_textField.dart';

import '../constants/sizes.dart';
import '../constants/spaces.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController forgotPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.primary,
            ),
            ISpace.v24,
            Text(
              "Enter email to reset your password",
              style: TextStyle(
                fontSize: ISizes.fontMd,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            ISpace.v24,
            MytextField(
              controller: forgotPasswordController,
              hintText: "Email",
              obscureText: false,
            ),
            ISpace.v24,
            MyButton(text: "Send Link"),
            ISpace.v16,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Know the credential ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Sign In now",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
