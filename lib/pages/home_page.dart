import 'package:flutter/material.dart';
import 'package:portfolio_easy/constants/colors.dart';
import 'package:portfolio_easy/constants/size.dart';
import 'package:portfolio_easy/widgets/contact_section.dart';
import 'package:portfolio_easy/widgets/drawer_mobile.dart';
import 'package:portfolio_easy/widgets/footer.dart';
import 'package:portfolio_easy/widgets/header_desktop.dart';
import 'package:portfolio_easy/widgets/header_mobile.dart';
import 'package:portfolio_easy/widgets/main_desktop.dart';
import 'package:portfolio_easy/widgets/main_mobile.dart';
import 'package:portfolio_easy/widgets/projects_section.dart';
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
              const SizedBox(height: 30),
              // PROJECTS
              const ProjectsSection(),

              const SizedBox(height: 30),
              // CONTACT
              ContactSection(),
              const SizedBox(height: 30),
              // FOOTER
              Footer(),
            ],
          ),
        );
      },
    );
  }
}
