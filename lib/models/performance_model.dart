class PerformanceModel {
  final String companyName;
  final double percent;
  final double percentHighest;
  PerformanceModel({
    required this.companyName,
    required this.percent,
    required this.percentHighest,
  });
}

List<PerformanceModel> performances = [
  PerformanceModel(
    companyName: 'TSLA',
    percent: 36.8,
    percentHighest: 44.0,
  ),
  PerformanceModel(
    companyName: 'XIACF',
    percent: 44.0,
    percentHighest: 44.0,
  ),
  PerformanceModel(
    companyName: 'AAPL',
    percent: 23.1,
    percentHighest: 44.0,
  ),
  PerformanceModel(
    companyName: 'NYSE',
    percent: 24.0,
    percentHighest: 44.0,
  ),
  PerformanceModel(
    companyName: 'NASDAQ',
    percent: 15.9,
    percentHighest: 44.0,
  ),
  PerformanceModel(
    companyName: 'BADA',
    percent: 20.0,
    percentHighest: 44.0,
  ),
  PerformanceModel(
    companyName: 'TWTR',
    percent: 22.9,
    percentHighest: 44.0,
  ),
  PerformanceModel(
    companyName: 'NYSE',
    percent: 24.0,
    percentHighest: 44.0,
  ),
];
