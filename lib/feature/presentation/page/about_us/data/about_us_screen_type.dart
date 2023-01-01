import 'package:dufs/core/app_static_data/about_screen_data.dart';

enum AboutUs {
  contact("Contact", AboutUsData.contactMessage),
  directory("Directory", AboutUsData.contactMessage),
  gallery("Gallery", AboutUsData.contactMessage),
  news("News", AboutUsData.contactMessage),
  typography("Typography", AboutUsData.contactMessage),
  societyStorage("Society Storage", AboutUsData.contactMessage);

  final String title, body;

  const AboutUs(this.title, this.body);
}
