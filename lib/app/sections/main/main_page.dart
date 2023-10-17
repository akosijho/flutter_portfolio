import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/app/sections/main/widgets/widgets.dart';
import 'package:my_portfolio/app/widgets/back_to_top_arrow.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/configs/app.dart';
import 'package:my_portfolio/core/providers/drawer_provider.dart';
import 'package:my_portfolio/core/responsive/responsive.dart';
import 'package:my_portfolio/core/theme/cubit/theme_cubit.dart';
import 'package:my_portfolio/util/util.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return Scaffold(
        key: drawerProvider.scaffoldKey,
        extendBodyBehindAppBar: true,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(120),
            child: ResponsiveWidget(
              desktop: NavbarDesktop(),
              tablet: NavBarTablet(),
              mobile: NavBarTablet(),
            )),
        drawer: !ResponsiveWidget.isDesktop(context) ? const MobileDrawer() : null,
        body: Stack(
          children: [
            Positioned(
              height: height * 0.2,
              left: -88,
              child: Container(
                height: height / 3,
                width: 166,
                decoration: const BoxDecoration(shape: BoxShape.circle, color: secondaryColor),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: -100,
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor.withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 500, sigmaX: 500),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                )),
            if (state.isDarkThemeOn)
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  Images.cosmos,
                  opacity: const AlwaysStoppedAnimation<double>(0.2),
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
          ],
        ),
        floatingActionButton: const BackToTopArrow(),
      );
    });
  }
}
