import 'package:flutter/material.dart';
import 'package:google_search/constants/colors.dart';
import 'package:google_search/widgets/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
            )
          ],
        ),
      ),
    );
  }
}
