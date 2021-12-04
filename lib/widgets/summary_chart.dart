import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_dashboard/config/constants.dart';
import 'package:portfolio_dashboard/models/chart_data_model.dart';

class SummaryChart extends StatelessWidget {
  const SummaryChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: summaryFakeData.minX,
        maxX: summaryFakeData.maxX,
        minY: summaryFakeData.minY,
        maxY: summaryFakeData.maxY,
        gridData: FlGridData(
          show: true,
          drawHorizontalLine: false,
          getDrawingVerticalLine: (value) => FlLine(
            color: Colors.white.withOpacity(0.1),
            strokeWidth: 1,
          ),
        ),
        borderData: FlBorderData(
          show: false,
        ),
        titlesData: FlTitlesData(
          rightTitles: SideTitles(
            showTitles: false,
          ),
          topTitles: SideTitles(
            showTitles: false,
          ),
          bottomTitles: bottomTitles,
          leftTitles: leftTitles,
        ),
        lineBarsData: [
          LineChartBarData(
            spots: summaryFakeData.indexData,
            isStrokeCapRound: false,
            barWidth: 4,
            colors: [orangeLightColor],
            dashArray: [4, 8],
            isCurved: false,
            dotData: FlDotData(show: false),
          ),
          LineChartBarData(
            spots: summaryFakeData.stockPriceData,
            isStrokeCapRound: false,
            barWidth: 4,
            colors: [orangeColor],
            isCurved: false,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              colors: [
                Colors.black.withOpacity(0.2),
                orangeLightColor.withOpacity(0.2),
                orangeLightColor.withOpacity(0.1),
                Colors.black.withOpacity(0.2),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SideTitles get leftTitles => SideTitles(
        showTitles: true,
        getTitles: (value) {
          switch (value.toInt()) {
            case 100:
              return '€ 100';
            case 200:
              return '€ 200';
            case 400:
              return '€ 400';
            case 600:
              return '€ 600';
            case 800:
              return '€ 800';
            case 1000:
              return '€ 1000';
          }
          return '';
        },
        margin: 8,
        reservedSize: 50.0,
        interval: 1,
        getTextStyles: (context, value) => TextStyle(
          color: yellowColor.withOpacity(0.5),
          fontSize: 14.0,
        ),
      );

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        getTextStyles: (context, value) => TextStyle(
          color: Colors.white.withOpacity(0.8),
          fontSize: 16.0,
        ),
        getTitles: (value) {
          switch (value.toInt()) {
            case 1:
              return 'Jan';
            case 2:
              return 'Feb';
            case 3:
              return 'Mar';
            case 4:
              return 'Apr';
            case 5:
              return 'May';
            case 6:
              return 'Jun';
            case 7:
              return 'Jul';
            case 8:
              return 'Aug';
            case 9:
              return 'Sep';
            case 10:
              return 'Okt';
            case 11:
              return 'Nov';
            case 12:
              return 'Dec';
          }
          return '';
        },
      );
}
