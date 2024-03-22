import 'dart:io';

import 'package:flutter_realm_atlas/domain/repository/user_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
    UserRepository
  ]
)

void main (){}

String jsonReader(String name) => File('assets/config/$name').readAsStringSync();