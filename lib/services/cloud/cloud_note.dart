import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:learningdart/services/cloud/cloud_storage_constants.dart';
import 'package:flutter/foundation.dart';

@immutable
class CloudNote {
  final String documentId;
  final String ownerUserId;
  final String text;

  const CloudNote({
    required this.documentId,
    required this.ownerUserId,
    required this.text,
  });

  // signature of your function
  CloudNote.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      // make sure all your fields are initialized
      : documentId = snapshot.id,
        ownerUserId = snapshot.data()[ownerUserIdFieldName],
        text = snapshot.data()[textFieldName] as String;
}
