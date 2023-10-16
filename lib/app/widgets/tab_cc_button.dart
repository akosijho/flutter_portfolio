import 'package:flutter/material.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/theme/app_themes.dart';

class TabCCButton extends StatefulWidget {
  final String text;
  final Function() onTap;

  const TabCCButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TabCCButtonState createState() => _TabCCButtonState();
}

class _TabCCButtonState extends State<TabCCButton> {
  double _animatedWidth = 0.0;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);

    return Stack(
      children: [
        if (!isHover)
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: theme.textColor, width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 50,
          width: _animatedWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: pinkPurple,
          ),
        ),
        InkWell(
            onHover: (value) {
              setState(() {
                isHover = !isHover;
                _animatedWidth = value ? 200 : 0.0;
              });
            },
            onTap: () {
              setState(() => _animatedWidth = 200);
              widget.onTap();
            },
            child: SizedBox(
              height: 50,
              width: 200,
              child: Center(
                child: Text(
                  widget.text.toUpperCase(),
                  style: TextStyle(
                    color: theme.textColor,
                    fontSize: 16,
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
