import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/app/utils/navbar_utils.dart';
import 'package:my_portfolio/app/widgets/widgets.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/providers/scroll_provider.dart';
import 'package:my_portfolio/core/theme/cubit/theme_cubit.dart';
import 'package:my_portfolio/util/constants.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    var theme = Theme.of(context);
    return Drawer(
      child: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
        return Material(
          color: theme.scaffoldBackgroundColor,
          child: Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: Column(
              children: [
                const Center(child: NavBarLogo()),
                const Divider(),
                ListTile(
                  leading: Icon(state.isDarkThemeOn ? Icons.dark_mode_outlined : Icons.light_mode),
                  title: Text(state.isDarkThemeOn ? "Light Mode" : "Dark Mode"),
                  trailing: Switch(
                    value: state.isDarkThemeOn,
                    activeColor: theme.primaryColor,
                    inactiveTrackColor: Colors.grey,
                    onChanged: (newValue) {
                      context.read<ThemeCubit>().updateTheme(newValue);
                    },
                  ),
                ),
                const Divider(),
                ...NavBarUtils.names.asMap().entries.map((e) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: MaterialButton(
                        hoverColor: theme.primaryColor.withAlpha(70),
                        onPressed: () {
                          scrollProvider.jumpTo(e.key);
                          Navigator.pop(context);
                        },
                        child: ListTile(
                          leading: Icon(NavBarUtils.icons[e.key]),
                          title: Text(e.value),
                        ),
                      ),
                    )),
                Space.y(5.w)!,
                ColorChangeButton(
                  text: 'RESUME',
                  onTap: () {
                    openUrl(resume);
                  }
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
