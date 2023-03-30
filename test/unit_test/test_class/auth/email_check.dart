// @が含まれているかチェックするテストコード
class EmailCheck {
  // 実行する関数
  static bool hasAtSymbol(String email) {
    final RegExp regex = RegExp(r'@');
    return regex.hasMatch(email);
  }
}
