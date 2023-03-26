import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = StreamProvider<User?>((ref) {
  return FirebaseAuth.instance.authStateChanges();
});

final firestoreProvider =
    Provider<FirebaseFirestore>((ref) => FirebaseFirestore.instance);

final userInfoProvider = StreamProvider((ref) {
  final uid = FirebaseAuth.instance.currentUser?.uid;
  final docRef = FirebaseFirestore.instance.collection('user');
  final fetch = docRef.doc(uid).snapshots();
  return fetch;
});