import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';
import 'package:flutter_travel/ui/widgets/icon_navbar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                  bottom: 30, left: defaultMargin, right: defaultMargin),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconNavbar(
                    sourceImage: 'assets/icon_home.png',
                    isActive: true,
                  ),
                  IconNavbar(sourceImage: 'assets/icon_booking.png'),
                  IconNavbar(sourceImage: 'assets/icon_card.png'),
                  IconNavbar(sourceImage: 'assets/icon_settings.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
