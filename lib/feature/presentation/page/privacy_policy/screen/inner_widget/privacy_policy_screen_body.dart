import 'package:dufs/core/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../widget/common_title_with_text_for_body.dart';
import 'app_nav_view.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({Key? key}) : super(key: key);

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
              child: const CommonTitleWithTextForBody(
                title: 'Privacy Policy',
                titleSize: 20,
                text: 'sometext',
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
