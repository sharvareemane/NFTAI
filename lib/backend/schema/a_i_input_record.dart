import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'a_i_input_record.g.dart';

abstract class AIInputRecord
    implements Built<AIInputRecord, AIInputRecordBuilder> {
  static Serializer<AIInputRecord> get serializer => _$aIInputRecordSerializer;

  @nullable
  String get words;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AIInputRecordBuilder builder) =>
      builder..words = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AI_Input');

  static Stream<AIInputRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AIInputRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AIInputRecord._();
  factory AIInputRecord([void Function(AIInputRecordBuilder) updates]) =
      _$AIInputRecord;

  static AIInputRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAIInputRecordData({
  String words,
}) =>
    serializers.toFirestore(
        AIInputRecord.serializer, AIInputRecord((a) => a..words = words));
