import 'package:flutter/material.dart';
import 'package:my_portfolio/app/widgets/widgets.dart';
import 'package:my_portfolio/core/animations/animations.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/responsive/responsive.dart';
import 'package:my_portfolio/util/util.dart';
import 'package:sizer/sizer.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:universal_html/html.dart' as html;

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, top: 10.h, right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(hellotag,
              style: AppText.h4!.copyWith(fontSize: isFontSize(context, 16)),),
              Image.asset(Images.hi, height: 10.sp,)
            ],
          ),
          Text(yourname,style: TextStyle(
            fontSize: isFontSize(context, 28),
            fontWeight: FontWeight.w600
          ),),
          Space.y(1.w)!,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("A", style: TextStyle(
                fontSize: isFontSize(context, 18),
                fontWeight: FontWeight.w400
              ),),
              AnimatedTextKit(
                animatedTexts: mobileList,
                repeatForever: true,
                isRepeatingAnimation: true,
              ),
            ],
          ),
          Space.y(2.w)!,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColorChangeButton(
                text: "Download CV",
                onTap: (){
                  html.window.open(resume, 'pdf');
                },
              ),
              const EntranceFader(
                  offset: Offset(0, 0),
                  delay: Duration(seconds: 1),
                  child: ZoomAnimation())
            ],
          ),
        ],
      ),
    );
  }
}
