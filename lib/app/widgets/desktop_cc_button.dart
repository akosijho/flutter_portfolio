import 'package:flutter/material.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/theme/app_themes.dart';

class DesktopCCButton extends StatefulWidget {
  const DesktopCCButton({required this.text, required this.onTap, super.key});

  final String text;
  final Function() onTap;

  @override
  State<DesktopCCButton> createState() => _DesktopCCButtonState();
}

class _DesktopCCButtonState extends State<DesktopCCButton> {
  double _animatedWidth = 0.0;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Stack(
      children: [
        if (!isHover)
          Container(
            height: 56,
            width: 250,
            decoration: BoxDecoration(
                border: Border.all(color: theme.textColor, width: 3), borderRadius: BorderRadius.circular(6)),
          ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 56,
          width: _animatedWidth,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), gradient: pinkPurple),
        ),
        InkWell(
          onHover: (value) {
            setState(() {
              isHover = !isHover;
              _animatedWidth = value ? 250 : 0.0;
            });
          },
          onTap: () {
            setState(() => _animatedWidth = 250);
            widget.onTap();
          },
          child: SizedBox(
            height: 65,
            width: 250,
            child: Center(
              child: Text(
                widget.text.toUpperCase(),
                style: TextStyle(color: isHover ? whiteColor : theme.textColor, fontSize: 18),
              ),
            ),
          ),
        )
      ],
    );
  }
}
