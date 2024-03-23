import 'package:flutter_realm_atlas/data/datasource/user_remote_datasource.dart';
import 'package:flutter_realm_atlas/domain/entity/user_entity.dart';
import 'package:flutter_realm_atlas/domain/repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  UserRemoteDataSource userRemoteDataSource;
  UserRepositoryImpl(this.userRemoteDataSource);
  @override
  Future<UserEntity> createUser(String username, String password, String name) async {
    try{
      final result = await userRemoteDataSource.createUser(username, password, name);
      var userEntity = UserEntity(result.username!, result.name!);
      return userEntity;
    } catch(e) {
      print(e.toString());
      return UserEntity('', '');
    }
  }

}