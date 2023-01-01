import 'package:dufs/core/common/responses/response.dart';
import 'package:dufs/feature/domain/repositories/auth_repository.dart';

class SignOutUseCase {
  final AuthRepository repository;

  SignOutUseCase({
    required this.repository,
  });

  Future<Response> call() async {
    return repository.signOut();
  }
}
