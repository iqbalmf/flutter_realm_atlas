// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Contacts extends _Contacts
    with RealmEntity, RealmObjectBase, RealmObject {
  Contacts(
    ObjectId id,
    String username,
    String password,
    String name,
  ) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'username', username);
    RealmObjectBase.set(this, 'password', password);
    RealmObjectBase.set(this, 'name', name);
  }

  Contacts._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get username =>
      RealmObjectBase.get<String>(this, 'username') as String;
  @override
  set username(String value) => RealmObjectBase.set(this, 'username', value);

  @override
  String get password =>
      RealmObjectBase.get<String>(this, 'password') as String;
  @override
  set password(String value) => RealmObjectBase.set(this, 'password', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<Contacts>> get changes =>
      RealmObjectBase.getChanges<Contacts>(this);

  @override
  Contacts freeze() => RealmObjectBase.freezeObject<Contacts>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Contacts._);
    return const SchemaObject(ObjectType.realmObject, Contacts, 'Contacts', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('username', RealmPropertyType.string),
      SchemaProperty('password', RealmPropertyType.string),
      SchemaProperty('name', RealmPropertyType.string),
    ]);
  }
}
