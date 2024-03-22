import 'package:realm/realm.dart';

import '../models/user_schema.dart' as users;

class RealmHelper extends Realm{
  late Realm realm;
  RealmHelper(super.config){
    _createInstance();
  }

  Future<Realm> _createInstance() async {
    final app = App(AppConfiguration("data-redci",
        baseUrl: Uri.parse("https://services.cloud.mongodb.com")));
    final currentUser = app.currentUser ?? await app.logIn(Credentials.anonymous());
    realm = Realm(Configuration.flexibleSync(currentUser, [users.User.schema]));
    realm.subscriptions.update((mutableSubscriptions) {
      mutableSubscriptions.add(realm.all<users.User>());
    });
    return realm;
  }
}
