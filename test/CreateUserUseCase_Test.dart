import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_realm_atlas/data/models/user_schema.dart';
import 'package:flutter_realm_atlas/domain/entity/user_entity.dart';
import 'package:flutter_realm_atlas/domain/repository/user_repository.dart';
import 'package:flutter_realm_atlas/domain/usecase/create_user_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:realm/realm.dart';

import 'helper/test_helper.dart';
import 'helper/test_helper.mocks.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  late CreateUserUseCase useCase;
  late MockUserRepository createUserRepository;
  setUp(() {
    createUserRepository = MockUserRepository();
    useCase = CreateUserUseCase(createUserRepository);
  });

  test('create user', () async {
    // final Map<String, dynamic> jsonMap = json.decode(jsonReader('atlasConfig.json'));
    Config realmConfig = await Config.getConfig('assets/config/atlasConfig.json');
    print(realmConfig.appId);
    print(realmConfig.atlasUrl);
    print(realmConfig.baseUrl);

    // final resut = UserEntity("iqbalmf", "iqbal");
    // when(createUserRepository.createUser(any, any, any))
    //     .thenAnswer((realInvocation) async => resut);
    // await useCase.execute("iqbalmf", "test123", "iqbal");
  });
}

class Config {
  late String appId;
  late String atlasUrl;
  late Uri baseUrl;

  Config._create(dynamic realmConfig){
    appId = realmConfig['appId'];
    atlasUrl = realmConfig['dataExplorerLink'];
    baseUrl = Uri.parse(realmConfig['baseUrl']);
  }

  static Future<Config> getConfig(String jsonConfigPath) async {
    dynamic realmConfig =
    json.decode(await rootBundle.loadString(jsonConfigPath));

    var config = Config._create(realmConfig);

    return config;
  }
}