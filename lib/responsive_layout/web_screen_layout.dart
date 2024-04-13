import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_search/constants/colors.dart';
import 'package:google_search/widgets/search_widget.dart';
import 'package:google_search/widgets/widget_web/serach_buttons_widget.dart';
import 'package:google_search/widgets/widget_web/transilation_button.dart';
import 'package:google_search/widgets/widget_web/web_footer.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Gmail",
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.w400),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Images",
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.w400),
              )),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/images/more-apps.svg",
                color: primaryColor,
              )),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: MaterialButton(
              color: const Color(0xff1A73EB),
              onPressed: () {},
              child: const Text(
                "Sign In",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.25,
          ),
          const Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  SearchWidgete(),
                  SizedBox(
                    height: 20,
                  ),
                  SearchButtons(),
                  SizedBox(
                    height: 10,
                  ),
                  TransilationButton(),
                ],
              ),
              WebFooter(),
            ],
          ))
        ],
      ),
    );
  }
}
