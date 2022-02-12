import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'n_f_t_collections_record.g.dart';

abstract class NFTCollectionsRecord
    implements Built<NFTCollectionsRecord, NFTCollectionsRecordBuilder> {
  static Serializer<NFTCollectionsRecord> get serializer =>
      _$nFTCollectionsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'NFT_jpeg')
  String get nFTJpeg;

  @nullable
  @BuiltValueField(wireName: 'NFT_artist')
  String get nFTArtist;

  @nullable
  @BuiltValueField(wireName: 'NFT_name')
  String get nFTName;

  @nullable
  @BuiltValueField(wireName: 'NFT_price')
  double get nFTPrice;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NFTCollectionsRecordBuilder builder) => builder
    ..nFTJpeg = ''
    ..nFTArtist = ''
    ..nFTName = ''
    ..nFTPrice = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('NFT_Collections');

  static Stream<NFTCollectionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<NFTCollectionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  NFTCollectionsRecord._();
  factory NFTCollectionsRecord(
          [void Function(NFTCollectionsRecordBuilder) updates]) =
      _$NFTCollectionsRecord;

  static NFTCollectionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createNFTCollectionsRecordData({
  String nFTJpeg,
  String nFTArtist,
  String nFTName,
  double nFTPrice,
}) =>
    serializers.toFirestore(
        NFTCollectionsRecord.serializer,
        NFTCollectionsRecord((n) => n
          ..nFTJpeg = nFTJpeg
          ..nFTArtist = nFTArtist
          ..nFTName = nFTName
          ..nFTPrice = nFTPrice));
