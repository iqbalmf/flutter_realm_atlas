import 'package:realm/realm.dart';

import '../models/user_schema.dart' as users;

class RealmHelper{
  late Realm realm;
  RealmHelper(){
    _createInstance();
  }

  Future<Realm> _createInstance() async {
    final app = App(AppConfiguration("data-redci",
        baseUrl: Uri.parse("https://services.cloud.mongodb.com")));
    final currentUser = app.currentUser ?? await app.logIn(Credentials.apiKey("0mYDzBZ5cihzaQMfSGy9wjOWySF7LAaKp3vyqAL70hY1CBx8Vtq2JruBvXLiszw7"));
    realm = Realm(Configuration.flexibleSync(currentUser, [users.User.schema]));
    realm.subscriptions.update((mutableSubscriptions) {
      mutableSubscriptions.add(realm.all<users.User>());
    });
    return realm;
  }
}
