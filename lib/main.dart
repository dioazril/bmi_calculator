import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const InputPage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF151515),
        ),
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: const Color(0xFFFF7000),
          inactiveTrackColor: const Color(0xFF8D8E98),
          thumbColor: const Color(0xFFFF7000),
          overlayColor: const Color(0x29FFB100),
          thumbShape: const RoundSliderThumbShape(
            enabledThumbRadius: 15.0,
          ),
          overlayShape: const RoundSliderOverlayShape(
            overlayRadius: 30.0,
          ),
          trackHeight: 3.0,
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFF313131),
      ),
    );
  }
}
