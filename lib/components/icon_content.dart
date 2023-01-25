import 'package:bmi_calculator/components/constant.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String? label;
  final IconData? icon;

  const IconContent({Key? key, this.label, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label!,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
