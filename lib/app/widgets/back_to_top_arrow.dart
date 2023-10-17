import 'package:flutter/material.dart';
import 'package:my_portfolio/core/animations/animations.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/providers/scroll_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class BackToTopArrow extends StatefulWidget {
  const BackToTopArrow({super.key});

  @override
  State<BackToTopArrow> createState() => _BackToTopArrowState();
}

class _BackToTopArrowState extends State<BackToTopArrow> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return EntranceFader(
      offset: const Offset(0, 20),
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.025),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () => scrollProvider.jumpTo(0),
              onHover: (isHovering) {
                setState(() {
                  isHover = isHovering ? true : false;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    gradient: isHover ? buttonGradient : pinkPurple,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: isHover ? [const BoxShadow(blurRadius: 12.0, offset: Offset(2.0, 3.0))] : null),
                child: Icon(
                  Icons.arrow_drop_up_outlined,
                  color: isHover ? blackColor : whiteColor,
                  size: 5.h,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
