import 'package:flutter/material.dart';
import 'package:my_portfolio/app/sections/main/widgets/widgets.dart';
import 'package:my_portfolio/core/configs/app.dart';
import 'package:my_portfolio/core/providers/drawer_provider.dart';
import 'package:my_portfolio/core/responsive/responsive.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
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
      body: const Placeholder(),
    );
  }
}
