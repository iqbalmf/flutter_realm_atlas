import '../models/user_schema.dart';

abstract class UserRemoteDataSource {
  Future<User> createUser(String username, String password, String name);

  Future<User> updateUser(String name);

  Future<void> deleteUser(User user);

  Future<List<User>> readUsers();

  Future<User> readUserByUsername(String username);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  @override
  Future<User> createUser(String username, String password, String name) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<void> deleteUser(User user) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<User> readUserByUsername(String username) {
    // TODO: implement readUserByUsername
    throw UnimplementedError();
  }

  @override
  Future<List<User>> readUsers() {
    // TODO: implement readUsers
    throw UnimplementedError();
  }

  @override
  Future<User> updateUser(String name) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
