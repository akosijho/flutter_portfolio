import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/app/utils/utils.dart';
import 'package:my_portfolio/app/widgets/widgets.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/theme/app_themes.dart';
import 'package:my_portfolio/core/theme/cubit/theme_cubit.dart';
import 'package:my_portfolio/util/util.dart';

class NavbarDesktop extends StatefulWidget {
  const NavbarDesktop({Key? key}) : super(key: key);

  @override
  State<NavbarDesktop> createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // theme
    var theme = Theme.of(context);
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: size.width / 8, vertical: 10),
        color: theme.navBarColor,
        child: Row(
          children: [
            const NavBarLogo(),
            Space.xm!,
            ...NavBarUtils.names.asMap().entries.map(
                  (e) => NavBarActionButton(
                label: e.value,
                index: e.key,
              ),
            ),
            // Space.x!,
            InkWell(
                onTap: () {
                  context.read<ThemeCubit>().updateTheme(!state.isDarkThemeOn);
                },
                child: Image.network(
                  state.isDarkThemeOn ? IconUrls.darkIcon : IconUrls.lightIcon,
                  height: 30,
                  width: 30,
                  color: state.isDarkThemeOn ? Colors.black : Colors.white,
                )),
            // Space.x!,
          ],
        ),
      );
    });
  }
}