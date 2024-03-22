import 'package:flutter_realm_atlas/data/datasource/realm_helper.dart';
import 'package:realm/realm.dart';

import '../models/user_schema.dart' as users;

abstract class UserRemoteDataSource {
  Future<users.User> createUser(String username, String password, String name);

  Future<users.User> updateUser(String name);

  Future<void> deleteUser(users.User user);

  Future<List<users.User>> readUsers();

  Future<users.User?> readUserByUsername(String username);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  RealmHelper realm;

  UserRemoteDataSourceImpl(this.realm);

  @override
  Future<users.User> createUser(String username, String password, String name) async {
    final newUser = users.User(ObjectId(), username, password, name);
    realm.write(() => realm.add(newUser));
    return newUser;
  }

  @override
  Future<void> deleteUser(users.User user) async {
    realm.write(() => realm.delete(user));
  }

  @override
  Future<users.User?> readUserByUsername(String username) async {
    final result = realm.query<users.User>("username == \$0", [username]);
    return result.firstOrNull;
  }

  @override
  Future<List<users.User>> readUsers() async {
    final result = realm.all<users.User>();
    return result.toList();
  }

  @override
  Future<users.User> updateUser(String name) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
