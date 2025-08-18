import 'package:flutter/material.dart';
import 'package:portfolio_easy/constants/colors.dart';
import 'package:portfolio_easy/utils/project_utils.dart';
import 'package:portfolio_easy/widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
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
                    const SizedBox(height: 50,),
                    // Work projects cards
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 900),
                      child: Wrap(
                        spacing: 25,
                        runSpacing: 25,
                        children: [
                          for(int i=0; i<workProjectUtils.length; i++)
                          ProjectCardWidget(
                            project: workProjectUtils[i],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 80,),
                    // hobby projects title
                    const Text(
                      "Hobi Projeleri",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(height: 50,),
                    // hobby projects cards
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 900),
                      child: Wrap(
                        spacing: 25,
                        runSpacing: 25,
                        children: [
                          for(int i=0; i<hobbyProjectUtils.length; i++)
                          ProjectCardWidget(
                            project: hobbyProjectUtils[i],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
  }
}