import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mail_list_record.g.dart';

abstract class MailListRecord
    implements Built<MailListRecord, MailListRecordBuilder> {
  static Serializer<MailListRecord> get serializer =>
      _$mailListRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MailListRecordBuilder builder) =>
      builder..email = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Mail_List');

  static Stream<MailListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MailListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MailListRecord._();
  factory MailListRecord([void Function(MailListRecordBuilder) updates]) =
      _$MailListRecord;

  static MailListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMailListRecordData({
  String email,
}) =>
    serializers.toFirestore(
        MailListRecord.serializer, MailListRecord((m) => m..email = email));
