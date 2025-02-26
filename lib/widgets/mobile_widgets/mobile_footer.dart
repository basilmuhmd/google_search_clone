import 'package:flutter/material.dart';
import 'package:google_search/widgets/footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        FooterText(title: "About"),
        SizedBox(
          width: 10,
        ),
        FooterText(title: "Advertising"),
        SizedBox(
          width: 10,
        ),
        FooterText(title: "Buisiness"),
        SizedBox(
          width: 10,
        ),
        FooterText(title: "How Search Works"),
        SizedBox(
          width: 10,
        ),
        FooterText(title: "Privacy"),
        SizedBox(
          width: 10,
        ),
        FooterText(title: "Terms"),
        SizedBox(
          width: 10,
        ),
        FooterText(title: "Settings"),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
