import 'package:flutter/material.dart';
import 'package:portfolio_dashboard/config/constants.dart';

class PerformanceInfo extends StatelessWidget {
  final double percent;
  final double percentHighest;
  final String companyName;
  const PerformanceInfo({
    Key? key,
    required this.percent,
    required this.percentHighest,
    required this.companyName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: (percent / percentHighest) * constraints.maxWidth,
        height: 30.0,
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
        ),
        margin: const EdgeInsets.only(bottom: kDefaultPadding),
        decoration: BoxDecoration(
          color: percent == percentHighest
              ? yellowColor.withOpacity(0.5)
              : yellowColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              companyName,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              '$percent',
              style: const TextStyle(
                color: yellowColor,
              ),
            ),
          ],
        ),
      );
    });
  }
}
