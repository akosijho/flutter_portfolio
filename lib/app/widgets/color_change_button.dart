import 'package:flutter/material.dart';
import 'package:my_portfolio/app/widgets/widgets.dart';
import 'package:my_portfolio/core/responsive/responsive.dart';

class ColorChangeButton extends StatelessWidget {
  const ColorChangeButton({required this.onTap, required this.text, super.key});

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: DesktopCCButton(text: text, onTap: onTap),
      mobile: MobileCCButton(text: text, onTap: onTap),
      tablet: TabCCButton(text: text, onTap: onTap),
    );
  }
}
