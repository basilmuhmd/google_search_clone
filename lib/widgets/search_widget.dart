import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_search/constants/colors.dart';

class SearchWidgete extends StatelessWidget {
  const SearchWidgete({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Center(
          child: Image.asset(
            "assets/images/google-logo.png",
            height: size.height * .15,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: size.width >= 786 ? size.width * 0.4 : size.width * .9,
          child: TextFormField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: searchBorder),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        30,
                      ),
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/images/search-icon.svg",
                      color: searchBorder,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/images/mic-icon.svg",
                    ),
                  ))),
        )
      ],
    );
  }
}
