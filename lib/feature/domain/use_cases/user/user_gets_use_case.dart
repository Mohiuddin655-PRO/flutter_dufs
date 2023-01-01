import 'package:dufs/core/common/responses/response.dart';
import 'package:dufs/feature/domain/entities/user_entity.dart';
import 'package:dufs/feature/domain/repositories/user_repository.dart';

class UserGetsUseCase {
  final UserRepository repository;

  UserGetsUseCase({
    required this.repository,
  });

  Future<Response> call() async {
    return repository.gets();
  }
}
