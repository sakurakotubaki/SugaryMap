import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sugary_map/application/auth_service/reset_password.dart';

part 'reset_password.g.dart';

@riverpod
ResetPassword resetPassword(ResetPasswordRef ref) {
  return ResetPassword();
}
