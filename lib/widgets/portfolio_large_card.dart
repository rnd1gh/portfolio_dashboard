import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_dashboard/config/constants.dart';

import 'package:portfolio_dashboard/widgets/detail_info.dart';

class PortfolioLargeCard extends StatelessWidget {
  final Widget chart;
  const PortfolioLargeCard({
    Key? key,
    required this.chart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      margin: const EdgeInsets.only(
        bottom: kDefaultPadding,
      ),
      padding: const EdgeInsets.all(
        kDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SvgPicture.asset(
            "assets/svgicon/logo-tesla.svg",
            color: Colors.white,
            width: 50.0,
            height: 50.0,
          ),
          const SizedBox(
            width: kDefaultPadding,
          ),
          const DetailInfo(
            title: 'Tesla, inc.',
            subTitle: 'Electic car company',
          ),
          const Spacer(),
          const DetailInfo(
            title: 'TSLA',
            subTitle: 'Stock',
          ),
          const Spacer(),
          SizedBox(
            height: double.infinity,
            width: 200.0,
            child: chart,
          ),
          const Spacer(),
          const DetailInfo(title: '€ 53.600', subTitle: 'Invest'),
          const Spacer(),
          const DetailInfo(title: '15.3%', subTitle: 'Gain')
        ],
      ),
    );
  }
}
