import 'package:flutter/material.dart';
import 'package:portfolio_easy/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                width: double.maxFinite,
                alignment: Alignment.center,
                child:const Text(
                  "Made by Orhan with Flutter",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: CustomColor.whiteSecondary,
                  ),
                ),
              );
  }
}