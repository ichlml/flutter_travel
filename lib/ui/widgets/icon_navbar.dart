import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';

class IconNavbar extends StatelessWidget {
  const IconNavbar({
    super.key,
    required this.sourceImage,
    this.isActive = false,
  });

  final bool isActive;
  final String sourceImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                sourceImage,
              ),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isActive ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
