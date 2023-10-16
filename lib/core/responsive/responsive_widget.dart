import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    Key? key,
    required this.mobile,
    required this.desktop,
    required this.tablet,
  }) : super(key: key);

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  static bool isMobile(BuildContext context) => MediaQuery.sizeOf(context).width <= 500;
  static bool isTablet(BuildContext context) => MediaQuery.sizeOf(context).width < 1024 && MediaQuery.sizeOf(context).width >500;
  static bool isDesktop(BuildContext context) => MediaQuery.sizeOf(context).width >= 1024;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    if(width >= 1024){
      return desktop;
    }
    if(width < 1024 && width > 500){
      return tablet;
    }
    return mobile;
  }
}
