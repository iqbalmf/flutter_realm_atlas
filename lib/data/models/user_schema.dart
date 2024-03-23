import 'package:realm/realm.dart';
part 'user_schema.g.dart';
@RealmModel()
@MapTo('user')
class _User {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  String? name;
  String? password;
  String? username;
}