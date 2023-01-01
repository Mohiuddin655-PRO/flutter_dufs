import 'package:dufs/feature/data/local/contents/departments.dart';
import 'package:dufs/feature/data/local/contents/languages.dart';
import 'package:flutter/material.dart';

import '../nearby_user/map_nearby_user_body.dart';
import '../home/contents/home_feature_section.dart';
import '../home/contents/home_member_section.dart';
import '../home/contents/home_slider_section.dart';

class MemberBody extends StatelessWidget {
  final SupportingLanguage language;

  const MemberBody({
    Key? key,
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HomeMemberSection(
            department: DepartmentContent.bangla,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.english,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.accounting,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.history,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.geography,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.pharmacy,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.biochemistry,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.statistics,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.physics,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.management,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.fineArts,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.psychology,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.massComAndJournalism,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.culture,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.arabicLiterature,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.anthropology,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.geology,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.historyAndCultureOfIslam,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.islamicStudies,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.philosophy,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.urduAndPersian,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.law,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.economics,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.instituteOfEducationAndResearch,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.marketing,
            language: language,
          ),
          HomeMemberSection(
            department: DepartmentContent.internationalRelations,
            language: language,
          ),
        ],
      ),
    );
  }
}
