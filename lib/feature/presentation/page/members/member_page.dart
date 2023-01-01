import 'package:dufs/feature/data/local/contents/languages.dart';
import 'package:flutter/material.dart';

import '../../widget/screen.dart';
import 'member_body.dart';

class MemberPage extends StatefulWidget {
  static const String route = "home_page";

  const MemberPage({Key? key}) : super(key: key);

  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  var language = SupportingLanguage.en;

  @override
  Widget build(BuildContext context) {
    return Screen(
      title: "Friends",
      background: Colors.white,
      body: MemberBody(language: language),
    );
  }
}
