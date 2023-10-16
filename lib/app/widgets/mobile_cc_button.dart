import 'package:flutter/material.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/theme/app_themes.dart';

class MobileCCButton extends StatefulWidget {
  const MobileCCButton({required this.onTap, required this.text, super.key});

  final String text;
  final Function() onTap;

  @override
  State<MobileCCButton> createState() => _MobileCCButtonState();
}

class _MobileCCButtonState extends State<MobileCCButton> {
  double _animatedWidth = 0.0;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Stack(
      children: [
        if (!isHover)
          Container(
            height: 35,
            width: 125,
            decoration: BoxDecoration(
              border: Border.all(color: theme.textColor, width: 1.5),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 35,
          width: _animatedWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            gradient: pinkPurple,
          ),
        ),
        InkWell(
          onHover: (value) {
            setState(() {
              isHover = !isHover;
              _animatedWidth = value ? 125 : 0.0;
            });
          },
          onTap: () {
            setState(() => _animatedWidth = 125);
            widget.onTap();
          },
          child: SizedBox(
            height: 35,
            width: 125,
            child: Center(
              child: Text(
                widget.text.toUpperCase(),
                style: TextStyle(
                  color: theme.textColor,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
