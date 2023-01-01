import 'package:dufs/feature/presentation/widget/text_view.dart';
import 'package:flutter/material.dart';

import '../../widget/screen.dart';
import 'about_us_body.dart';
import 'data/about_us_screen_type.dart';

class AboutUsPage extends StatefulWidget {
  static const String route = "about_us_page";

  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  late List<AboutUs> popList = [
    AboutUs.contact,
    AboutUs.directory,
    AboutUs.gallery,
    AboutUs.news,
    AboutUs.typography,
    AboutUs.societyStorage
  ];
  late AboutUs type = popList[0];

  @override
  Widget build(BuildContext context) {
    return Screen(
      title: "About Us",
      centerTitle: true,
      actions: [
        PopupMenuButton(
          onSelected: (value) => setState(() => type = value),
          itemBuilder: (context) => popList.map(
            (value) {
              return PopupMenuItem(
                value: value,
                child: TextView(text: value.title),
              );
            },
          ).toList(),
        ),
      ],
      body: AboutUsBody(item: type),
    );
  }
}
