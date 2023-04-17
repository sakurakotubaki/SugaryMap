import 'package:firebase_auth/firebase_auth.dart';

class ResetEmail {
  final auth = FirebaseAuth.instance;
  Future<void> emailUpdate(String email) async {
    try {
      final result = await auth.currentUser?.updateEmail(email);
      return result;
    } on FirebaseAuthException catch (e) {
      throw _handleError(e.code);
    } catch (e) {
      throw 'エラーが発生しました。';
    }
  }

  String _handleError(String errorCode) {
    switch (errorCode) {
      case 'invalid-email':
        return 'メールアドレスが無効。';
      case 'user-disabled':
        return 'このアカウントは無効になっています。';
      case 'user-not-found':
        return 'アカウントが見つかりません。';
      default:
        return 'エラーが発生しました。';
    }
  }
}
