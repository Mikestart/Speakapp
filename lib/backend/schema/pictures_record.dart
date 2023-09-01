import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PicturesRecord extends FirestoreRecord {
  PicturesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "user_mail" field.
  String? _userMail;
  String get userMail => _userMail ?? '';
  bool hasUserMail() => _userMail != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "picture_url" field.
  String? _pictureUrl;
  String get pictureUrl => _pictureUrl ?? '';
  bool hasPictureUrl() => _pictureUrl != null;

  // "image_description" field.
  String? _imageDescription;
  String get imageDescription => _imageDescription ?? '';
  bool hasImageDescription() => _imageDescription != null;

  // "image_title" field.
  String? _imageTitle;
  String get imageTitle => _imageTitle ?? '';
  bool hasImageTitle() => _imageTitle != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userName = snapshotData['user_name'] as String?;
    _userMail = snapshotData['user_mail'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _status = snapshotData['status'] as bool?;
    _pictureUrl = snapshotData['picture_url'] as String?;
    _imageDescription = snapshotData['image_description'] as String?;
    _imageTitle = snapshotData['image_title'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('pictures')
          : FirebaseFirestore.instance.collectionGroup('pictures');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('pictures').doc();

  static Stream<PicturesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PicturesRecord.fromSnapshot(s));

  static Future<PicturesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PicturesRecord.fromSnapshot(s));

  static PicturesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PicturesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PicturesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PicturesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PicturesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PicturesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPicturesRecordData({
  String? userName,
  String? userMail,
  DateTime? createdTime,
  bool? status,
  String? pictureUrl,
  String? imageDescription,
  String? imageTitle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_name': userName,
      'user_mail': userMail,
      'created_time': createdTime,
      'status': status,
      'picture_url': pictureUrl,
      'image_description': imageDescription,
      'image_title': imageTitle,
    }.withoutNulls,
  );

  return firestoreData;
}

class PicturesRecordDocumentEquality implements Equality<PicturesRecord> {
  const PicturesRecordDocumentEquality();

  @override
  bool equals(PicturesRecord? e1, PicturesRecord? e2) {
    return e1?.userName == e2?.userName &&
        e1?.userMail == e2?.userMail &&
        e1?.createdTime == e2?.createdTime &&
        e1?.status == e2?.status &&
        e1?.pictureUrl == e2?.pictureUrl &&
        e1?.imageDescription == e2?.imageDescription &&
        e1?.imageTitle == e2?.imageTitle;
  }

  @override
  int hash(PicturesRecord? e) => const ListEquality().hash([
        e?.userName,
        e?.userMail,
        e?.createdTime,
        e?.status,
        e?.pictureUrl,
        e?.imageDescription,
        e?.imageTitle
      ]);

  @override
  bool isValidKey(Object? o) => o is PicturesRecord;
}
