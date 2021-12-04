import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_dashboard/config/constants.dart';

class SideMenuButton extends StatelessWidget {
  final String iconUrl;
  final bool isSelected;
  final VoidCallback onPress;

  const SideMenuButton({
    Key? key,
    required this.iconUrl,
    required this.isSelected,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: kDefaultFatPadding,
        ),
        child: Row(
          children: [
            const Spacer(),
            SvgPicture.asset(
              iconUrl,
              height: 32.0,
              width: 32.0,
              color: isSelected ? yellowColor : Colors.white.withOpacity(0.2),
            ),
            const Spacer(),
            isSelected
                ? Container(
                    height: 32.0,
                    width: 2.0,
                    color: orangeColor,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
