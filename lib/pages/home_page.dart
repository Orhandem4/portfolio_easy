import 'package:flutter/material.dart';
import 'package:portfolio_easy/constants/colors.dart';
import 'package:portfolio_easy/constants/size.dart';
import 'package:portfolio_easy/constants/skill_items.dart';
import 'package:portfolio_easy/widgets/drawer_mobile.dart';
import 'package:portfolio_easy/widgets/header_desktop.dart';
import 'package:portfolio_easy/widgets/header_mobile.dart';
import 'package:portfolio_easy/widgets/main_desktop.dart';
import 'package:portfolio_easy/widgets/main_mobile.dart';
import 'package:portfolio_easy/widgets/skills_desktop.dart';
import 'package:portfolio_easy/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(
      builder: (context, Constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.ScaffoldBg,
          endDrawer: Constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // MAİN
              if (Constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              if (Constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop()
              else
                MainMobile(),

              // SKILLS
              Container(
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    Text(
                      "Neler Yapabilirim",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    SizedBox(height: 50),
                    // platforms and skills
                    if (Constraints.maxWidth >= kMedDesktopWidth)
                      const SkillsDesktop()
                    else
                      const SkillsMobile(),
                  ],
                ),
              ),
              // PROJECTS
              Container(
                width: screenWidth,
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),

                child: Column(
                  children: [
                    // Work projects title
                    const Text(
                      "İş Projeleri",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),

                    // Work projects cards
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 280,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CustomColor.bgLight2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // project image
                          Image.asset(
                            "assets/projects/proje1.jpeg",
                            height: 140,
                            width: 250,
                            fit: BoxFit.cover,
                          ),
                          // title
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
                            child: Text(
                              "Title",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: CustomColor.whitePrimary,
                              ),
                            ),
                          ),
                          // subtitle
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                            child: Text(
                              "Some Dummy subtitle about the project",
                              style: TextStyle(
                                fontSize: 10,
                                color: CustomColor.whiteSecondary,
                              ),
                            ),
                          ),
                          const Spacer(),
                          //footer
                          Container(
                            color: CustomColor.bgLight1,
                            padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 12,
                              vertical: 10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Available on:",
                                  style: TextStyle(
                                    color: CustomColor.yellowSecondary,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // CONTACT
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              // FOOTER
              Container(height: 500, width: double.maxFinite),
            ],
          ),
        );
      },
    );
  }
}
