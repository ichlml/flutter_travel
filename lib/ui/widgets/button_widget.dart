import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 55,
  });

  final String buttonText;
  final VoidCallback? onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      // margin: const EdgeInsets.only(top: 16),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              defaultRadius,
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
