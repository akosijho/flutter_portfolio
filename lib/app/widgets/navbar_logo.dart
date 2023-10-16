import 'package:flutter/material.dart';
import 'package:my_portfolio/core/responsive/responsive.dart';
import 'package:my_portfolio/core/theme/app_themes.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);
    //
    var textSty = TextStyle(
      color: theme.textColor,
      fontWeight: FontWeight.w100,
      fontSize: ResponsiveWidget.isDesktop(context) ? 32 : 20,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("< ", style: textSty),
        Text("Jhobert", style: textSty),
        Text(
          ResponsiveWidget.isDesktop(context) ? " />\t\t" : " />",
          style: textSty,
        )
      ],
    );
  }
}