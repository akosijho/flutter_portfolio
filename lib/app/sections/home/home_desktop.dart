import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/widgets/widgets.dart';
import 'package:my_portfolio/core/animations/animations.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/responsive/responsive.dart';
import 'package:my_portfolio/core/theme/app_themes.dart';
import 'package:my_portfolio/util/util.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      height: 80.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.h),
              width: 56.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        hellotag,
                        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
                      ),
                      EntranceFader(
                          offset: const Offset(0, 0),
                          delay: const Duration(seconds: 2),
                          duration: const Duration(milliseconds: 800),
                          child: Image.asset(
                            Images.hi,
                            height: 40,
                          )),
                    ],
                  ),
                  Space.y(0.5.w)!,
                  Text(
                    yourname,
                    style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "A ",
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
                      ),
                      AnimatedTextKit(isRepeatingAnimation: true, repeatForever: true, animatedTexts: desktopList)
                    ],
                  ),
                  Space.y(1.5.w)!,
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Text(
                      miniDescription,
                      style: TextStyle(
                          fontSize: isFontSize(context, 20),
                          fontWeight: FontWeight.w400,
                          color: theme.textColor.withOpacity(0.6)),
                    ),
                  ),
                  Space.y(3.w)!,
                  ColorChangeButton(
                      onTap: () {
                        html.window.open(resume, 'pdf');
                      },
                      text: "DOWNLOAD CV")
                ],
              ),
            ),
            const ZoomAnimation()
          ],
        ),
      ),
    );
  }
}
