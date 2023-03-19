// ignore_for_file: prefer_const_declarations, unused_local_variable

import 'package:flutter_test/flutter_test.dart';

import '../test_class/auth/email_check.dart';
import '../test_class/auth/password_check.dart';

void main() {
  // チェックをする変数
  final email = 'hogehoge@co.jp';// 仮のメールアドレス
  final emailCheck = EmailCheck.hasAtSymbol(email);
  test('email pattern check', () {
    expect(email, 'hogehoge@co.jp'); // 右側にテストの成功結果を書く
  });

  final password = 'xe056';// 仮のパスワード
  final passwordCheck = PasswordCheck.isPasswordValid(password);
  test('password pattern check', () {
    expect(password, 'xe056477'); // 右側にテストの成功結果を書く
  });
}
