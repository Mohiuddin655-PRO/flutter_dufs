import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/app_static_data/member_screen_data.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/region_provider.dart';
import '../../../../data/local/contents/departments.dart';
import '../../../../data/local/contents/languages.dart';
import '../../../../domain/entities/user_entity.dart';
import '../../../widget/text_view.dart';

class HomeMemberSection extends StatefulWidget {
  final DepartmentContent department;
  final SupportingLanguage language;

  const HomeMemberSection({
    Key? key,
    required this.department,
    this.language = SupportingLanguage.en,
  }) : super(key: key);

  @override
  State<HomeMemberSection> createState() => _HomeMemberSectionState();
}

class _HomeMemberSectionState extends State<HomeMemberSection> {
  late String regionalDepartment = RegionalTextProvider<DepartmentContent>(
      content: widget.department,
      language: widget.language,
      builder: (language, content) {
        switch (language) {
          case SupportingLanguage.bn:
            return "${content.bnValue} বিভাগ";
          case SupportingLanguage.en:
          default:
            return "Department of ${content.enValue}";
        }
      }).value;

  @override
  Widget build(BuildContext context) {
    const features = MemberScreenData.members;
    return Column(
      children: [
        Row(
          children: [
            TextView(
              text: regionalDepartment,
              textSize: 16,
              padding: const EdgeInsets.only(
                top: 32,
                bottom: 12,
                left: 16,
                right: 16,
              ),
              textStyle: FontWeight.bold,
            ),
          ],
        ),
        SizedBox(
          height: 340,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemBuilder: (context, index) {
              var item = features[index];
              return ItemUser(item: item);
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

class ItemUser extends StatelessWidget {
  final UserEntity item;
  final Function()? onPressed;

  const ItemUser({
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
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        width: width * 0.75,
        decoration: BoxDecoration(
          color: KColors.primary.shade50.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: KColors.primary.shade100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: KColors.primary.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: CachedNetworkImage(
                  imageUrl: item.photo ?? "",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    text: item.name ?? "",
                    textSize: 16,
                    margin: const EdgeInsets.only(bottom: 8),
                    maxLines: 2,
                    textOverflow: TextOverflow.ellipsis,
                  ),
                  TextView(
                    margin: const EdgeInsets.only(bottom: 8),
                    text: item.designation ?? "",
                    textColor: Colors.grey,
                    textSize: 14,
                    maxLines: 2,
                    textOverflow: TextOverflow.ellipsis,
                  ),
                  TextView(
                    text: item.workplace ?? "",
                    textColor: Colors.grey,
                    textSize: 14,
                    maxLines: 2,
                    textOverflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
