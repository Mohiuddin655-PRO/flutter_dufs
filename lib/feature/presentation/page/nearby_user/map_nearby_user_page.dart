import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/themes.dart';
import '../../../../core/constants/widgets.dart';
import 'map_nearby_user_body.dart';

class MapNearbyUserPage extends StatelessWidget {
  static const String route = "map_nearby_user_page";

  const MapNearbyUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Nearby friends"),
        backgroundColor: KColors.primary.shade900.withOpacity(0.75),
        iconTheme: AppTheme.iconThemeDark,
        systemOverlayStyle: AppTheme.transparentStatusBar,
        leading: Widgets.iconBack(
            context: context, icon: const Icon(Icons.arrow_back)),
        elevation: 0,
      ),
      body: const MapNearbyUserBody(),
    );
  }
}
