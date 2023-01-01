import '../../../../../core/app_static_data/owner_screen_data.dart';

enum Owner {
  academic(
    name: OwnerData.academicProViceChancellorName,
    photo: OwnerData.academicProViceChancellorPhoto,
    title: OwnerData.academicProViceChancellorTitle,
    message: OwnerData.academicProViceChancellorMessage,
  ),
  administration(
    name: OwnerData.administrationProViceChancellorName,
    photo: OwnerData.administrationProViceChancellorPhoto,
    title: OwnerData.administrationProViceChancellorTitle,
    message: OwnerData.administrationProViceChancellorMessage,
  ),
  viceChancellor(
    name: OwnerData.viceChancellorName,
    photo: OwnerData.viceChancellorPhoto,
    title: OwnerData.viceChancellorTitle,
    message: OwnerData.viceChancellorMessage,
  );

  final String name, photo, title, message;

  const Owner({
    required this.name,
    required this.photo,
    required this.title,
    required this.message,
  });
}
