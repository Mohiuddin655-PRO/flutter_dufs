import 'package:dufs/core/common/responses/response.dart';
import 'package:dufs/feature/domain/entities/user_entity.dart';
import 'package:dufs/feature/domain/repositories/user_repository.dart';

class UserGetUseCase {
  final UserRepository repository;

  UserGetUseCase({
    required this.repository,
  });

  Future<Response> call({
    required String uid,
  }) async {
    return repository.get(uid);
  }
}
