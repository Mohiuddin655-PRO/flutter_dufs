import 'package:cached_network_image/cached_network_image.dart';
import 'package:dufs/core/constants/colors.dart';
import 'package:dufs/feature/presentation/widget/text_view.dart';
import 'package:flutter/material.dart';

import '../../widget/common_title_with_text_for_body.dart';
import '../privacy_policy/screen/inner_widget/app_nav_view.dart';
import 'data/owner.dart';

class OwnerBody extends StatelessWidget {
  final Owner item;

  const OwnerBody({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Container(
              clipBehavior: Clip.antiAlias,
              width: 200,
              decoration: BoxDecoration(
                color: KColors.primary.shade900.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: CachedNetworkImage(imageUrl: item.photo),
            ),
            TextView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              text: item.name,
              textSize: 18,
              textColor: Colors.grey,
              textAlign: TextAlign.center,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: CommonTitleWithTextForBody(
                title: item.title,
                titleSize: 24,
                text: item.message,
                textSize: 16,
                textHeight: 1.5,
                textAlign: TextAlign.justify,
                titleAlign: TextAlign.center,
              ),
            ),
            const NavView(),
          ],
        ),
      ),
    );
  }
}
