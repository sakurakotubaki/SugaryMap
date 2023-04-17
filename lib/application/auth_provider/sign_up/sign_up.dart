import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sugary_map/application/auth_service/sign_up_service.dart';

part 'sign_up.g.dart';

@riverpod
SignUpService signUp(SignUpRef ref) {
  return SignUpService();
}