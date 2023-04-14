import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sugary_map/application/auth_service/sign_in_service.dart';

part 'sign_in.g.dart';

@riverpod
SignInService signIn(SignInRef ref) {
  return SignInService();
}