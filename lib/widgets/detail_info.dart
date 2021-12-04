import 'package:flutter/material.dart';

class DetailInfo extends StatelessWidget {
  final String title;
  final String subTitle;
  const DetailInfo({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 24.0),
        ),
        Text(
          subTitle,
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
