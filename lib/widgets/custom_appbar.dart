import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_dashboard/config/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kHeightAppBar,
      width: double.infinity,
      child: Row(
        children: [
          const Text(
            'Portfolio Dashboard',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Container(
            width: 250,
            height: kHeightAppBar / 2,
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultThinPadding,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: primaryDarkColor,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      hintText: 'Search something',
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                SvgPicture.asset(
                  "assets/svgicon/search-outline.svg",
                  color: Colors.white.withOpacity(0.8),
                  height: 32.0,
                  width: 32.0,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: kDefaultFatPadding,
          ),
          Stack(
            children: [
              SvgPicture.asset(
                "assets/svgicon/notifications-outline.svg",
                height: 40.0,
                width: 40.0,
                color: Colors.white.withOpacity(0.5),
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 10.0,
                  width: 10.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: orangeColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: kDefaultFatPadding,
          ),
          const CircleAvatar(
            radius: 20.0,
            backgroundImage: AssetImage("assets/avatar.jpg"),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
