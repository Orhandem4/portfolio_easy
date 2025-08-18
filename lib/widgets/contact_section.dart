import 'package:flutter/material.dart';
import 'package:portfolio_easy/constants/colors.dart';
import 'package:portfolio_easy/constants/size.dart';
import 'package:portfolio_easy/constants/sns_links.dart';
import 'package:portfolio_easy/widgets/costum_text_field.dart';
// ignore: deprecated_member_use
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          // title
          Text(
            "Get in touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),

          const SizedBox(height: 50),

          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWidth) {
                  return buildNameEmailFieldDesktop();
                }

                // else
                return buildNameEmailFieldMobile();
              },
            ),
          ),
          const SizedBox(height: 15),
          //message
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: CustomTextField(hintText: "Mesajınız", maxLines: 16),
          ),
          const SizedBox(height: 20),
          //send button
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("İletişime Geç"),
              ),
            ),
          ),
          const SizedBox(height: 30),

          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          const SizedBox(height: 15),
          // SNS icon button links
          Wrap(
            spacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.github]);
                },
                child: Image.asset("github.png", width: 28),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.linkedIn]);
                },
                child: Image.asset("linkedin.png", width: 28),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.facebook]);
                },
                child: Image.asset("facebook.png", width: 28),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.instagram]);
                },
                child: Image.asset("instagram.png", width: 28),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.telegram]);
                },
                child: Image.asset("telegram.png", width: 28),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        //name
        Flexible(child: CustomTextField(hintText: "İsim")),
        const SizedBox(width: 15),
        //email
        Flexible(child: CustomTextField(hintText: "Mail")),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        //name
        Flexible(child: CustomTextField(hintText: "İsim")),
        const SizedBox(height: 15),
        //email
        Flexible(child: CustomTextField(hintText: "Mail")),
      ],
    );
  }
}
