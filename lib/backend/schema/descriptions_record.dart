import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DescriptionsRecord extends FirestoreRecord {
  DescriptionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "descriptionImage" field.
  String? _descriptionImage;
  String get descriptionImage => _descriptionImage ?? '';
  bool hasDescriptionImage() => _descriptionImage != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _descriptionImage = snapshotData['descriptionImage'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('descriptions')
          : FirebaseFirestore.instance.collectionGroup('descriptions');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('descriptions').doc();

  static Stream<DescriptionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DescriptionsRecord.fromSnapshot(s));

  static Future<DescriptionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DescriptionsRecord.fromSnapshot(s));

  static DescriptionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DescriptionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DescriptionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DescriptionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DescriptionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DescriptionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDescriptionsRecordData({
  String? description,
  String? descriptionImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'descriptionImage': descriptionImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class DescriptionsRecordDocumentEquality
    implements Equality<DescriptionsRecord> {
  const DescriptionsRecordDocumentEquality();

  @override
  bool equals(DescriptionsRecord? e1, DescriptionsRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.descriptionImage == e2?.descriptionImage;
  }

  @override
  int hash(DescriptionsRecord? e) =>
      const ListEquality().hash([e?.description, e?.descriptionImage]);

  @override
  bool isValidKey(Object? o) => o is DescriptionsRecord;
}
