import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_dashboard/config/constants.dart';

class PortfolioSmallCard extends StatelessWidget {
  final Widget chart;

  const PortfolioSmallCard({
    Key? key,
    required this.chart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 400.0,
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SvgPicture.asset(
            "assets/svgicon/logo-twitter.svg",
            height: 50.0,
            width: 50.0,
            color: Colors.white,
          ),
          const SizedBox(
            width: kDefaultPadding,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'TWTR',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              Text(
                '€ 36.600',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: kDefaultPadding,
          ),
          Expanded(
            child: chart,
          ),
        ],
      ),
    );
  }
}
