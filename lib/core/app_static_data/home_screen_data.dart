import 'package:flutter/material.dart';

import '../../feature/presentation/page/home/contents/home_feature_section.dart';

class HomeScreenData {
  static const List<String> featureHeaders = [
    "Checking Message",
    "Update My Information",
    "Join with Alumni Forum",
    "Search Alumni Directory",
  ];

  static const List<String> featureBodies = [
    "Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam.",
    "Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam.",
    "Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam.",
    "Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam.",
  ];

  static List<Item> features = [
    Item(
      icon: Icons.email,
      title: featureHeaders[0],
      body: featureBodies[0],
    ),
    Item(
      icon: Icons.person,
      title: featureHeaders[1],
      body: featureBodies[1],
    ),
    Item(
      icon: Icons.group_add,
      title: featureHeaders[2],
      body: featureBodies[2],
    ),
    Item(
      icon: Icons.search,
      title: featureHeaders[3],
      body: featureBodies[3],
    ),
  ];
}
