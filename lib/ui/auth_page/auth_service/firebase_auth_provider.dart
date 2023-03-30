import 'package:firebase_auth/firebase_auth.dart';
import 'package:sugary_map/service/export/global_export.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});