import 'package:bmi_calculator/components/constant.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData icon;
  final Function()? onPressed;

  const RoundedButton({Key? key, required this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      fillColor: kCalculateBtnColour,
      shape: const CircleBorder(),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}

class CalculateButton extends StatelessWidget {
  final String buttonTitle;
  const CalculateButton({Key? key, required this.buttonTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kCalculateBtnColour,
      margin: const EdgeInsets.only(top: 10.0),
      width: double.infinity,
      height: 80.0,
      child: Center(
        child: Text(
          buttonTitle,
          style: kCalculateBtnTextStyle,
        ),
      ),
    );
  }
}
