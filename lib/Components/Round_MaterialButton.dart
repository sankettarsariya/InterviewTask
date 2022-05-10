import 'package:flutter/material.dart';

class RoundMaterialButton extends StatelessWidget {
  final String buttonText;
  final Function onPress;
  final Color color;
  final double height, width;
  final TextStyle textStyle;
  final double circular;

  RoundMaterialButton(
      {required this.buttonText,
      required this.onPress,
      required this.color,
      required this.height,
      required this.width,
      required this.textStyle,
      required this.circular});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: MaterialButton(
        color: color,
        child: Text(
          buttonText,
          style: textStyle,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circular),
        ),
        onPressed:()=> onPress(),
      ),
    );
  }
}
