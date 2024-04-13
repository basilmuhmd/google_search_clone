import 'package:flutter/material.dart';
import 'package:google_search/widgets/widget_web/button_widget.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            ButtonsWidget(title: "Googl Search"),
            SizedBox(
              width: 10,
            ),
            ButtonsWidget(title: "Iam feeling Lucky")
          ],
        )
      ],
    );
  }
}
