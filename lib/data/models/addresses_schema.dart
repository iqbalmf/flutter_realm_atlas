import 'package:realm/realm.dart';
part 'addresses_schema.g.dart';
@RealmModel()
class _Addresses {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  @MapTo('contact_id')
  late ObjectId contactId;
  late String street;
  late String city;
  late String province;
  late String country;
  @MapTo('postal_code')
  late String postalCode;
}