// パスワードが6桁以上で、アルファベットと数字がそれぞれ少なくとも1つ含まれているかどうかをチェックする
class PasswordCheck {
  static bool isPasswordValid(String password) {
    final RegExp regex = RegExp(r'^(?=.*[a-zA-Z])(?=.*\d).{6,}$');
    return regex.hasMatch(password);
  }
}
