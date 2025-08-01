import 'package:flutter/material.dart';
import 'package:portfolio_easy/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
                margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 30),
                height: screenHeight,
                constraints: BoxConstraints(minHeight: 560.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //avatar img
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return LinearGradient(colors: [
                          CustomColor.ScaffoldBg.withOpacity(0.6),
                          CustomColor.ScaffoldBg.withOpacity(0.6),
                        ]).createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child: Image.asset(
                        "assets/batman.png", 
                        width: screenWidth,
                      ),
                    ),
                    SizedBox(height: 30,),
                    //intro message
                    Text(
                      "Selam,\nBen Orhan Demir\nFlutter Yazılımcısı \nolmaya çalışıyorum",
                      style: TextStyle(
                        fontSize: 24.0,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: 190,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "İletişim İçin",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              );
  }
}