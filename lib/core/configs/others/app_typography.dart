import 'package:flutter/material.dart';

class AppText {
  static TextStyle? h1;
  static TextStyle? h2;
  static TextStyle? h3;
  static TextStyle? h4;
  static void init(){
    const baseStyle = TextStyle(fontFamily: "Poppins");
    h1 = baseStyle.copyWith(fontSize: 22);
    h2 = h1!.copyWith(fontWeight: FontWeight.w600);
    h3 = baseStyle.copyWith(fontWeight: FontWeight.w400);
    h4 = baseStyle.copyWith(fontWeight: FontWeight.w100);
  }
}