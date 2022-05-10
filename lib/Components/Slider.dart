import 'package:flutter/material.dart';

class SliderProgress extends StatelessWidget {
  const SliderProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SliderTheme(
      data: SliderTheme.of(context).copyWith(
          trackHeight: 6,
          thumbColor: Colors.transparent,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0)),
      child: Slider(
        min: 0.0,
        max: 100.0,
        value: 30.00, onChanged: (double value) {},
        activeColor: Colors.white,
      ),
    );
  }
}
