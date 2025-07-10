import 'package:flutter/material.dart';
import 'sizes.dart'; // So you can use ISizes constants here

class ISpace {
  ISpace._(); // Private constructor

  // 🔹 Vertical Spacing
  static const SizedBox v4 = SizedBox(height: ISizes.xs);
  static const SizedBox v8 = SizedBox(height: ISizes.sm);
  static const SizedBox v12 = SizedBox(height: ISizes.defaultSpaceBetween);
  static const SizedBox v16 = SizedBox(height: ISizes.md);
  static const SizedBox v24 = SizedBox(height: ISizes.lg);
  static const SizedBox v32 = SizedBox(height: ISizes.xl);
  static const SizedBox v44 = SizedBox(height: ISizes.xxl);
  // 🔹 Horizontal Spacing
  static const SizedBox h4 = SizedBox(width: ISizes.xs);
  static const SizedBox h8 = SizedBox(width: ISizes.sm);
  static const SizedBox h12 = SizedBox(width: ISizes.defaultSpaceBetween);
  static const SizedBox h16 = SizedBox(width: ISizes.md);
  static const SizedBox h24 = SizedBox(width: ISizes.lg);
  static const SizedBox h32 = SizedBox(width: ISizes.xl);
}
