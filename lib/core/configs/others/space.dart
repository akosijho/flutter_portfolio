import 'package:flutter/material.dart';

class Space {
  Space._();

  static Widget? x(double no) => SizedBox(width: no);

  static Widget? y(double no) => SizedBox(width: no);
  static Widget? xl;
  static Widget? xm;

  static void init() {
    xl = const SizedBox(width: 50);
    xm = const Expanded(child: SizedBox(width: double.infinity));
  }
}
