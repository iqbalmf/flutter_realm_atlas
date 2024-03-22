import 'package:realm/realm.dart';
part 'contacts_schema.g.dart';
@RealmModel()
class _Contacts {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  late String username;
  late String password;
  late String name;
}