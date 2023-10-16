import 'package:flutter/material.dart';
import 'package:my_portfolio/app/widgets/widgets.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/providers/drawer_provider.dart';
import 'package:my_portfolio/core/responsive/responsive.dart';
import 'package:my_portfolio/core/theme/app_themes.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class NavBarTablet extends StatelessWidget {
  const NavBarTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    var theme = Theme.of(context);
    return Container(
      color: theme.navBarColor,
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveWidget.isTablet(context) ? 10.w : 10, vertical: 10),
      child: Row(
        children: [
          IconButton(
            highlightColor: Colors.white54,
            onPressed: () {
              drawerProvider.scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          Space.xm!,
          const NavBarLogo(),
          // Space.x1!,
        ],
      ),
    );
  }
}