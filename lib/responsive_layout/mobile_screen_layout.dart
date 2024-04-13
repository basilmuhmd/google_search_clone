import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_search/constants/colors.dart';
import 'package:google_search/widgets/mobile_widgets/mobile_footer.dart';
import 'package:google_search/widgets/search_widget.dart';
import 'package:google_search/widgets/widget_web/serach_buttons_widget.dart';
import 'package:google_search/widgets/widget_web/transilation_button.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        title: SizedBox(
          width: size.width * 0.34,
          child: const DefaultTabController(
              length: 2,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TabBar(
                    labelColor: blueColor,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: blueColor,
                    tabs: [
                      Tab(
                        text: "All",
                      ),
                      Tab(
                        text: "IMAGE",
                      ),
                    ]),
              )),
        ),
        actions: [
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
            padding: const EdgeInsets.only(right: 10),
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
              MobileFooter(),
            ],
          ))
        ],
      ),
    );
  }
}
