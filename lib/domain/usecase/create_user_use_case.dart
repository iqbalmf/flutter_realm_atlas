import 'package:flutter_realm_atlas/domain/repository/user_repository.dart';

import '../entity/user_entity.dart';

class CreateUserUseCase {
  UserRepository userRepository;

  CreateUserUseCase(this.userRepository);

  Future<UserEntity> execute(
      String username, String password, String name) async {
    return await userRepository.createUser(username, password, name);
  }
}
