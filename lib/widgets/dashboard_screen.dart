import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_dashboard/config/constants.dart';
import 'package:portfolio_dashboard/models/performance_model.dart';
import 'package:portfolio_dashboard/widgets/balance_info.dart';
import 'package:portfolio_dashboard/widgets/custom_appbar.dart';

import 'package:portfolio_dashboard/widgets/custom_dropdown_button.dart';
import 'package:portfolio_dashboard/widgets/performance_info.dart';

import 'package:portfolio_dashboard/widgets/portfolio_chart.dart';
import 'package:portfolio_dashboard/widgets/portfolio_large_card.dart';
import 'package:portfolio_dashboard/widgets/portfolio_small_card.dart';
import 'package:portfolio_dashboard/widgets/summary_chart.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: kDefaultFatPadding,
        top: kDefaultFatPadding,
        right: kDefaultFatPadding,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultFatPadding,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(
          30.0,
        ),
      ),
      child: Column(
        children: [
          // custom appbar
          const CustomAppbar(),
          // dashboard screen
          Expanded(
            child: Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: kDefaultPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Summary',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                            const SizedBox(
                              width: kDefaultPadding,
                            ),
                            const CustomDropdownButton(),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 5,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    color: orangeColor,
                                    borderRadius: BorderRadius.circular(22.0),
                                  ),
                                ),
                                const SizedBox(
                                  width: kDefaultThinPadding,
                                ),
                                Text(
                                  'Stock Price',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: kDefaultPadding,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const DottedLine(
                                  lineLength: 25.0,
                                  dashLength: 5.0,
                                  dashGapLength: 5.0,
                                  lineThickness: 5.0,
                                  dashRadius: 10.0,
                                  dashColor: orangeLightColor,
                                ),
                                const SizedBox(
                                  width: kDefaultThinPadding,
                                ),
                                Text(
                                  'Index',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // summary chart
                        Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: kDefaultFatPadding,
                          ),
                          width: double.infinity,
                          height: 400.0,
                          child: const SummaryChart(),
                        ),
                        const Text(
                          'Porfolio',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                        ),
                        const SizedBox(
                          height: kDefaultPadding,
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  PortfolioSmallCard(
                                    chart: PortfolioChart(
                                      isDown: true,
                                    ),
                                  ),
                                  PortfolioSmallCard(
                                    chart: PortfolioChart(
                                      isDown: false,
                                    ),
                                  ),
                                  PortfolioSmallCard(
                                    chart: PortfolioChart(
                                      isDown: false,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: kDefaultPadding,
                              ),
                              const PortfolioLargeCard(
                                chart: PortfolioChart(),
                              ),
                              const PortfolioLargeCard(
                                chart: PortfolioChart(
                                  isDown: true,
                                ),
                              ),
                              const PortfolioLargeCard(
                                chart: PortfolioChart(),
                              ),
                              const PortfolioLargeCard(
                                chart: PortfolioChart(
                                  isDown: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Performing',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 24.0),
                            ),
                            Spacer(),
                            CustomDropdownButton(),
                          ],
                        ),
                        const SizedBox(
                          height: kDefaultPadding,
                        ),
                        ...performances.map(
                          (e) => PerformanceInfo(
                            percent: e.percent,
                            percentHighest: e.percentHighest,
                            companyName: e.companyName,
                          ),
                        ),
                        const SizedBox(
                          height: kDefaultPadding,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Balance',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: kDefaultPadding,
                        ),
                        const BalanceInfo(
                          title: 'Invest',
                          balance: 536.0,
                          percent: 5.0,
                        ),
                        const BalanceInfo(
                          title: 'Gain',
                          balance: 302.0,
                          percent: 35.0,
                        ),
                        const BalanceInfo(
                          title: 'Loss',
                          balance: 120.890,
                          percent: -15.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
