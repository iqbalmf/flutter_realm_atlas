// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addresses_schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Addresses extends _Addresses
    with RealmEntity, RealmObjectBase, RealmObject {
  Addresses(
    ObjectId id,
    ObjectId contactId,
    String street,
    String city,
    String province,
    String country,
    String postalCode,
  ) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'contact_id', contactId);
    RealmObjectBase.set(this, 'street', street);
    RealmObjectBase.set(this, 'city', city);
    RealmObjectBase.set(this, 'province', province);
    RealmObjectBase.set(this, 'country', country);
    RealmObjectBase.set(this, 'postal_code', postalCode);
  }

  Addresses._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  ObjectId get contactId =>
      RealmObjectBase.get<ObjectId>(this, 'contact_id') as ObjectId;
  @override
  set contactId(ObjectId value) =>
      RealmObjectBase.set(this, 'contact_id', value);

  @override
  String get street => RealmObjectBase.get<String>(this, 'street') as String;
  @override
  set street(String value) => RealmObjectBase.set(this, 'street', value);

  @override
  String get city => RealmObjectBase.get<String>(this, 'city') as String;
  @override
  set city(String value) => RealmObjectBase.set(this, 'city', value);

  @override
  String get province =>
      RealmObjectBase.get<String>(this, 'province') as String;
  @override
  set province(String value) => RealmObjectBase.set(this, 'province', value);

  @override
  String get country => RealmObjectBase.get<String>(this, 'country') as String;
  @override
  set country(String value) => RealmObjectBase.set(this, 'country', value);

  @override
  String get postalCode =>
      RealmObjectBase.get<String>(this, 'postal_code') as String;
  @override
  set postalCode(String value) =>
      RealmObjectBase.set(this, 'postal_code', value);

  @override
  Stream<RealmObjectChanges<Addresses>> get changes =>
      RealmObjectBase.getChanges<Addresses>(this);

  @override
  Addresses freeze() => RealmObjectBase.freezeObject<Addresses>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Addresses._);
    return const SchemaObject(ObjectType.realmObject, Addresses, 'Addresses', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('contactId', RealmPropertyType.objectid,
          mapTo: 'contact_id'),
      SchemaProperty('street', RealmPropertyType.string),
      SchemaProperty('city', RealmPropertyType.string),
      SchemaProperty('province', RealmPropertyType.string),
      SchemaProperty('country', RealmPropertyType.string),
      SchemaProperty('postalCode', RealmPropertyType.string,
          mapTo: 'postal_code'),
    ]);
  }
}
