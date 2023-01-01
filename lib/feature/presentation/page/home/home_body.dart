import 'package:dufs/feature/data/local/contents/languages.dart';
import 'package:dufs/feature/presentation/page/nearby_user/map_nearby_user_page.dart';
import 'package:dufs/feature/presentation/widget/text_view.dart';
import 'package:flutter/material.dart';

import '../nearby_user/map_nearby_user_body.dart';
import 'contents/home_feature_section.dart';
import 'contents/home_slider_section.dart';

class HomeBody extends StatelessWidget {
  final SupportingLanguage language;

  const HomeBody({
    Key? key,
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const HomeSliderSection(),
          const HomeFeatureSection(),
          const TextView(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.symmetric(horizontal: 24),
            text: "Nearby friends",
            textStyle: FontWeight.bold,
            textColor: Colors.black,
            textSize: 24,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, MapNearbyUserPage.route),
            child: AbsorbPointer(
              child : Container(
                margin: const EdgeInsets.only(
                  top: 16,
                  bottom: 40,
                  left: 8,
                  right: 8,
                ),
                width: size.width,
                height: size.width,
                child: const MapNearbyUserBody(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
