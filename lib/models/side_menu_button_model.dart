class SideMenuButtonModel {
  final String logoUrl;
  final int index;
  SideMenuButtonModel({
    required this.logoUrl,
    required this.index,
  });
}

List<SideMenuButtonModel> menuButtons = [
  SideMenuButtonModel(
    logoUrl: "assets/svgicon/apps-outline.svg",
    index: 1,
  ),
  SideMenuButtonModel(
    logoUrl: "assets/svgicon/pulse-outline.svg",
    index: 2,
  ),
  SideMenuButtonModel(
    logoUrl: "assets/svgicon/stats-chart-outline.svg",
    index: 3,
  ),
  SideMenuButtonModel(
    logoUrl: "assets/svgicon/globe-outline.svg",
    index: 4,
  ),
  SideMenuButtonModel(
    logoUrl: "assets/svgicon/person-outline.svg",
    index: 5,
  ),
];
