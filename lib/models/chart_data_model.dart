import 'package:fl_chart/fl_chart.dart';

class SummaryChartModel {
  final double minX;
  final double minY;
  final double maxX;
  final double maxY;
  List<FlSpot> stockPriceData;
  List<FlSpot> indexData;
  SummaryChartModel({
    required this.minX,
    required this.minY,
    required this.maxX,
    required this.maxY,
    required this.stockPriceData,
    required this.indexData,
  });
}

SummaryChartModel summaryFakeData = SummaryChartModel(
  maxX: 12,
  minX: 1,
  minY: 0,
  maxY: 1100,
  stockPriceData: const [
    FlSpot(1, 100),
    FlSpot(1.8, 50),
    FlSpot(2.5, 220),
    FlSpot(2.8, 190),
    FlSpot(3.1, 380),
    FlSpot(3.3, 300),
    FlSpot(3.8, 350),
    FlSpot(4.1, 466),
    FlSpot(4.7, 550),
    FlSpot(4.9, 500),
    FlSpot(5.3, 800),
    FlSpot(5.7, 600),
    FlSpot(5.9, 650),
    FlSpot(6.1, 700),
    FlSpot(6.5, 720),
    FlSpot(6.9, 700),
    FlSpot(7.3, 750),
    FlSpot(7.5, 720),
    FlSpot(7.7, 800),
    FlSpot(7.9, 810),
    FlSpot(8.2, 820),
    FlSpot(8.7, 900),
    FlSpot(9.0, 820),
    FlSpot(9.3, 700),
    FlSpot(9.5, 750),
    FlSpot(9.7, 770),
    FlSpot(10.0, 800),
    FlSpot(10.4, 850),
    FlSpot(10.7, 820),
    FlSpot(10.9, 870),
    FlSpot(11.0, 900),
    FlSpot(11.5, 920),
    FlSpot(11.7, 950),
    FlSpot(12, 890),
  ],
  indexData: const [
    FlSpot(1, 600),
    FlSpot(2, 350),
    FlSpot(2.5, 400),
    FlSpot(3.1, 380),
    FlSpot(3.5, 300),
    FlSpot(3.8, 200),
    FlSpot(4.5, 250),
    FlSpot(4.9, 500),
    FlSpot(5.6, 100),
    FlSpot(5.9, 300),
    FlSpot(6.3, 250),
    FlSpot(6.8, 400),
    FlSpot(7.1, 420),
    FlSpot(7.3, 410),
    FlSpot(8.2, 300),
    FlSpot(8.5, 350),
    FlSpot(8.9, 250),
    FlSpot(9.1, 300),
    FlSpot(9.3, 400),
    FlSpot(9.9, 410),
    FlSpot(10.2, 420),
    FlSpot(10.5, 450),
    FlSpot(10.9, 300),
    FlSpot(11.0, 290),
    FlSpot(11.3, 280),
    FlSpot(11.7, 320),
    FlSpot(12, 350),
  ],
);

class PortfolioChartModel {
  final double minX;
  final double minY;
  final double maxX;
  final double maxY;
  List<FlSpot> dataUp;
  List<FlSpot> dataDown;
  PortfolioChartModel({
    required this.minX,
    required this.minY,
    required this.maxX,
    required this.maxY,
    required this.dataUp,
    required this.dataDown,
  });
}

PortfolioChartModel portfolioFakeData = PortfolioChartModel(
  maxX: 12,
  minX: 1,
  minY: 0,
  maxY: 1100,
  dataUp: const [
    FlSpot(1, 100),
    FlSpot(1.8, 50),
    FlSpot(2.5, 220),
    FlSpot(2.8, 190),
    FlSpot(3.1, 380),
    FlSpot(3.3, 300),
    FlSpot(3.8, 350),
    FlSpot(4.1, 466),
    FlSpot(4.7, 550),
    FlSpot(4.9, 500),
    FlSpot(5.3, 800),
    FlSpot(5.7, 600),
    FlSpot(5.9, 650),
    FlSpot(6.1, 700),
    FlSpot(6.5, 720),
    FlSpot(6.9, 700),
    FlSpot(7.3, 750),
    FlSpot(7.5, 720),
    FlSpot(7.7, 800),
    FlSpot(7.9, 810),
    FlSpot(8.2, 820),
    FlSpot(8.7, 900),
    FlSpot(9.0, 820),
    FlSpot(9.3, 700),
    FlSpot(9.5, 750),
    FlSpot(9.7, 770),
    FlSpot(10.0, 800),
    FlSpot(10.4, 850),
    FlSpot(10.7, 820),
    FlSpot(10.9, 870),
    FlSpot(11.0, 900),
    FlSpot(11.5, 920),
    FlSpot(11.7, 950),
    FlSpot(12, 890),
  ],
  dataDown: const [
    FlSpot(1, 600),
    FlSpot(2, 350),
    FlSpot(2.5, 400),
    FlSpot(3.1, 380),
    FlSpot(3.5, 300),
    FlSpot(3.8, 200),
    FlSpot(4.5, 250),
    FlSpot(4.9, 500),
    FlSpot(5.6, 100),
    FlSpot(5.9, 300),
    FlSpot(6.3, 250),
    FlSpot(6.8, 400),
    FlSpot(7.1, 420),
    FlSpot(7.3, 410),
    FlSpot(8.2, 300),
    FlSpot(8.5, 350),
    FlSpot(8.9, 250),
    FlSpot(9.1, 300),
    FlSpot(9.3, 400),
    FlSpot(9.9, 410),
    FlSpot(10.2, 420),
    FlSpot(10.5, 450),
    FlSpot(10.9, 300),
    FlSpot(11.0, 290),
    FlSpot(11.3, 280),
    FlSpot(11.7, 320),
    FlSpot(12, 350),
  ],
);
