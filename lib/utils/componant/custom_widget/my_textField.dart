import 'package:flutter/material.dart';

class MytextField extends StatelessWidget {
  const MytextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.prefixIcon,
    this.suffixIcon
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {



    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:18),
      child: TextField(
        controller: controller,
        obscureText: obscureText,


        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(19),
          borderSide: BorderSide(color:Theme.of(context).colorScheme.primary),
          ),
          focusedBorder: OutlineInputBorder(
            // borderRadius: BorderRadius.circular(19),
            borderSide: BorderSide(color:Theme.of(context).colorScheme.tertiary),
          ),

        )
      ),
    );
  }
}
