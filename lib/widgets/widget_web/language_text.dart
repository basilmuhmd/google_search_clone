import 'package:flutter/material.dart';
import 'package:google_search/constants/colors.dart';

class LanguageText extends StatelessWidget {
  final String title;
  const LanguageText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        title,
        style: const TextStyle(color: blueColor),
      ),
    );
  }
}
