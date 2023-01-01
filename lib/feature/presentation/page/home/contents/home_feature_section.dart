import 'package:dufs/core/app_static_data/home_screen_data.dart';
import 'package:dufs/core/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_info.dart';
import '../../../widget/text_view.dart';

class HomeFeatureSection extends StatelessWidget {
  const HomeFeatureSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final features = HomeScreenData.features;
    return Column(
      children: [
        const TextView(
          text: 'Welcome to ${AppInfo.fullName} (${AppInfo.name})',
          textSize: 18,
          textAlign: TextAlign.center,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          textStyle: FontWeight.bold,
        ),
        SizedBox(
          height: 300,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemBuilder: (context, index) {
              var item = features[index];
              return HomeFeatureItem(item: item);
            },
            separatorBuilder: (c, i) {
              return const SizedBox(width: 8);
            },
            itemCount: features.length,
          ),
        ),
      ],
    );
  }
}

class HomeFeatureItem extends StatelessWidget {
  final Item item;
  final Function()? onPressed;

  const HomeFeatureItem({
    Key? key,
    required this.item,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width * 0.75,
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        decoration: BoxDecoration(
          color: KColors.primary.shade50.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: KColors.primary.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                item.icon,
                color: KColors.primary,
                size: 40,
              ),
            ),
            TextView(
              text: item.title,
              textSize: 20,
              margin: const EdgeInsets.symmetric(vertical: 16),
              textAlign: TextAlign.center,
              maxLines: 2,
              textOverflow: TextOverflow.ellipsis,
            ),
            TextView(
              text: item.body,
              textColor: Colors.grey,
              textSize: 16,
              textAlign: TextAlign.center,
              maxLines: 5,
              textOverflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  final IconData icon;
  final String title;
  final String body;

  Item({
    required this.icon,
    required this.title,
    required this.body,
  });
}
