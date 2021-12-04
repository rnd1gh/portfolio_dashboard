import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_dashboard/config/constants.dart';
import 'package:portfolio_dashboard/models/chart_data_model.dart';

class PortfolioChart extends StatelessWidget {
  final bool isDown;

  const PortfolioChart({
    Key? key,
    this.isDown = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: portfolioFakeData.minX,
        maxX: portfolioFakeData.maxX,
        minY: portfolioFakeData.minY,
        maxY: portfolioFakeData.maxY,
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        lineBarsData: [
          LineChartBarData(
            spots:
                isDown ? portfolioFakeData.dataDown : portfolioFakeData.dataUp,
            isStrokeCapRound: false,
            dotData: FlDotData(show: false),
            isCurved: false,
            barWidth: 4,
            colors: isDown ? [redColor] : [greenColor],
            belowBarData: BarAreaData(
              show: true,
              colors: isDown
                  ? [
                      redColor.withOpacity(0.2),
                      redColor.withOpacity(0.1),
                    ]
                  : [
                      greenColor.withOpacity(0.2),
                      greenColor.withOpacity(0.1),
                    ],
            ),
          ),
        ],
      ),
    );
  }
}
