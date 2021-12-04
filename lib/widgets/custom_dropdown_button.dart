import 'package:flutter/material.dart';
import 'package:portfolio_dashboard/config/constants.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: '1 Year',
      icon: const Icon(
        Icons.keyboard_arrow_down,
      ),
      iconSize: 24,
      style: TextStyle(
        color: Colors.white.withOpacity(0.8),
        fontSize: 16.0,
      ),
      dropdownColor: primaryColor,
      onChanged: (String? newvalue) {},
      underline: Container(
        height: 0,
      ),
      items: <String>['1 Year', '2 Year', '3 Year', '4 Year']
          .map<DropdownMenuItem<String>>((String value) => DropdownMenuItem(
                value: value,
                child: Text(value),
              ))
          .toList(),
    );
  }
}
