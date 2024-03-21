import 'package:realm/realm.dart';
part 'user_schema.g.dart';
@RealmModel()
class _User {
  @MapTo('_id')
  late ObjectId id;
  @PrimaryKey()
  late String username;
  late String password;
  late String name;
}