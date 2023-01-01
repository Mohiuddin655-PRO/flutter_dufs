import 'package:dufs/core/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../widget/common_title_with_text_for_body.dart';
import '../privacy_policy/screen/inner_widget/app_nav_view.dart';
import 'data/about_us_screen_type.dart';

class AboutUsBody extends StatelessWidget {
  final AboutUs item;

  const AboutUsBody({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: KColors.primary,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              color: Colors.white,
              child: CommonTitleWithTextForBody(
                title: item.title,
                titleSize: 20,
                text: item.body,
                textSize: 16,
                textHeight: 1.5,
                textAlign: TextAlign.justify,
              ),
            ),
            const NavView(),
          ],
        ),
      ),
    );
  }
}
