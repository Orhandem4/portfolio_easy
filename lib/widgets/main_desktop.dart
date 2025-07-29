import 'package:flutter/material.dart';
import 'package:portfolio_easy/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                height: screenHeight / 1.2,
                constraints: BoxConstraints(minHeight: 350.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Selam,\nBen Orhan Demir\nFlutter Yazılımcısı \nolmaya çalışıyorum",
                          style: TextStyle(
                            fontSize: 30.0,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary,
                          ),
                        ),
                        const SizedBox(height: 15,),
                        SizedBox(
                          width: 250,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("İletişim İçin"),
                          ),
                        ),
                      ],
                    ),
                    
                    Image.asset("assets/batman.png", width: screenWidth / 2),
                  ],
                ),
              );
  }
}