import 'package:dufs/core/constants/colors.dart';
import 'package:dufs/feature/presentation/widget/text_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavView extends StatelessWidget {
  const NavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          TextView(
            padding: EdgeInsets.only(top: 20),
            text: "Powered By Tech Analytica Limited",
            textColor: Colors.grey,
            textAlign: TextAlign.center,
            textSize: 14,
            textStyle: FontWeight.bold,
          ),
          TextView(
            padding: EdgeInsets.only(top: 8),
            text: "©2023 Dhaka University Friends Society (DUFS-9495)",
            textColor: Colors.grey,
            textSize: 14,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class NavHeaderItem extends StatelessWidget {
  final String title;

  const NavHeaderItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        title,
        style: const TextStyle(
          color: KColors.primary,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}

class NavChildItem extends StatelessWidget {
  final String title;
  final Function()? onPress;

  const NavChildItem({Key? key, required this.title, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class NavSocialIcon extends StatelessWidget {
  final String icon;
  final Color? color;
  final double? size;
  final Function()? onPress;

  const NavSocialIcon({
    Key? key,
    required this.icon,
    this.color = Colors.white,
    this.size = 24,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          icon,
          width: size,
          height: size,
          color: color,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
