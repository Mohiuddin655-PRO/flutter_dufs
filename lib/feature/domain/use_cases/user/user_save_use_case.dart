import 'package:dufs/core/common/responses/response.dart';
import 'package:dufs/feature/domain/entities/user_entity.dart';
import 'package:dufs/feature/domain/repositories/user_repository.dart';

class UserSaveUseCase {
  final UserRepository repository;

  UserSaveUseCase({
    required this.repository,
  });

  Future<Response> call({
    required UserEntity entity,
  }) async {
    return repository.save(entity);
  }
}
