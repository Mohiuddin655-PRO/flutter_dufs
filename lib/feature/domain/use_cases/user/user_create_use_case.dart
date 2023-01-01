import 'package:dufs/core/common/responses/response.dart';
import 'package:dufs/feature/domain/entities/user_entity.dart';
import 'package:dufs/feature/domain/repositories/user_repository.dart';

class UserCreateUseCase {
  final UserRepository repository;

  UserCreateUseCase({
    required this.repository,
  });

  Future<Response> call({
    required UserEntity entity,
  }) async {
    return repository.create(entity);
  }
}
