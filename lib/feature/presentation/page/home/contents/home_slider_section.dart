import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../core/developer_info.dart';

class HomeSliderSection extends StatelessWidget {
  const HomeSliderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1,
        viewportFraction: 1.0,
        autoPlayAnimationDuration: const Duration(seconds: 2),
        reverse: false,
        autoPlay: true,
      ),
      items: DeveloperData.sliderImages.map((e) {
        return SizedBox(
          width: size.width,
          child: CachedNetworkImage(
            imageUrl: e,
            fit: BoxFit.cover,
          ),
        );
      }).toList(),
    );
  }
}
