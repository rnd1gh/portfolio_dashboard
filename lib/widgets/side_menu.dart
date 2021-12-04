import 'package:flutter/material.dart';
import 'package:portfolio_dashboard/config/constants.dart';
import 'package:portfolio_dashboard/home_controller.dart';
import 'package:portfolio_dashboard/models/side_menu_button_model.dart';

import 'package:portfolio_dashboard/widgets/side_menu_button.dart';

import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: kWidthSideMenu,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: kDefaultFatPadding,
            ),
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Image.asset("assets/logo.png"),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          ...menuButtons.map(
            (e) => SideMenuButton(
              iconUrl: e.logoUrl,
              isSelected:
                  context.watch<HomeController>().selectedIndex == e.index,
              onPress: () {
                context.read<HomeController>().onChangeSelectedIndex(e.index);
              },
            ),
          ),
          const Spacer(),
          SideMenuButton(
            iconUrl: "assets/svgicon/information-circle-outline.svg",
            isSelected: false,
            onPress: () {},
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
