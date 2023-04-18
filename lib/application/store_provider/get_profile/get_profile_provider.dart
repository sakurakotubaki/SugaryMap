import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// FutureProviderで単一のドキュメントを取得するコード.
final getProfileProvider = FutureProvider((ref) async {
  final auth = FirebaseAuth.instance;
  final id = auth.currentUser?.uid;
  final docRef = FirebaseFirestore.instance.collection('user');
  final fetch = await docRef.doc(id).get();
  return fetch;
});
