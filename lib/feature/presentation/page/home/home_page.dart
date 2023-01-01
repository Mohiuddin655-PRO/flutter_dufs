import 'package:dufs/feature/data/local/contents/languages.dart';
import 'package:dufs/feature/presentation/cubits/auth_cubit.dart';
import 'package:dufs/feature/presentation/page/auth/sign_in/auth_sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_info.dart';
import '../../widget/screen.dart';
import '../../widget/text_view.dart';
import '../about_us/about_us_page.dart';
import '../nearby_user/map_nearby_user_page.dart';
import '../owner/owner_page.dart';
import 'data/content.dart';
import 'home_body.dart';

class HomePage extends StatefulWidget {
  static const String route = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AuthCubit cubit = context.read<AuthCubit>();
  late List<Content> popList = [
    Content.aboutUs,
    Content.messages,
    Content.gallery,
    Content.members,
    Content.friendLocator,
    Content.profile,
    Content.logout,
  ];
  late Content type = popList[0];
  var language = SupportingLanguage.en;

  @override
  Widget build(BuildContext context) {
    return Screen(
      title: AppInfo.fullName,
      transparentAppBar: true,
      fixedContent: false,
      hideLeadingButton: true,
      background: Colors.white,
      actions: [
        PopupMenuButton(
          onSelected: (content) => _handleRoute(content),
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
      body: HomeBody(language: language),
    );
  }

  _handleRoute(Content content) async {
    switch (content) {
      case Content.aboutUs:
        Navigator.pushNamed(context, AboutUsPage.route);
        break;
      case Content.messages:
        Navigator.pushNamed(context, OwnerPage.route);
        break;
      case Content.gallery:
        // TODO: Handle this case.
        break;
      case Content.members:
        // TODO: Handle this case.
        break;
      case Content.friendLocator:
        Navigator.pushNamed(context, MapNearbyUserPage.route);
        break;
      case Content.profile:
        // TODO: Handle this case.
        break;
      case Content.logout:
        cubit.signOut();
        Navigator.pushNamedAndRemoveUntil(
            context, AuthSignInPage.route, (route) => false);
        break;
    }
  }
}
