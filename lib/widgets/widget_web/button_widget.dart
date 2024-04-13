import 'package:flutter/material.dart';
import 'package:google_search/constants/colors.dart';

class ButtonsWidget extends StatelessWidget {
  final String title;
  const ButtonsWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: searchColor,
      elevation: 0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))),
      onPressed: () {},
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
      child: Text(title),
    );
  }
}
