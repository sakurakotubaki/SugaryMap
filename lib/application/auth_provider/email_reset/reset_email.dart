import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sugary_map/application/auth_service/reset_email.dart';

part 'reset_email.g.dart';

@riverpod
ResetEmail resetEmail(ResetEmailRef ref) {
  return ResetEmail();
}