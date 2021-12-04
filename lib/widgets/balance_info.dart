import 'package:flutter/material.dart';
import 'package:portfolio_dashboard/config/constants.dart';

class BalanceInfo extends StatelessWidget {
  final String title;
  final double balance;
  final double percent;

  const BalanceInfo({
    Key? key,
    required this.title,
    required this.balance,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: 16.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '€ $balance',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              Text(
                percent > 0 ? '+$percent%' : '$percent%',
                style: TextStyle(
                  color: percent > 0 ? greenColor : yellowColor,
                  fontSize: 16.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
