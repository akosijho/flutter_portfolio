import 'package:flutter/material.dart';
import 'package:my_portfolio/core/responsive/responsive.dart';

import 'home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(mobile: HomeMobile(), desktop: HomeDesktop(), tablet: Placeholder());
  }
}
