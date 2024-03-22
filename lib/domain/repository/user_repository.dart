import 'package:flutter_realm_atlas/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> createUser(String username, String password, String name);
}
