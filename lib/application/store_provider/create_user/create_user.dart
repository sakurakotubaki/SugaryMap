import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sugary_map/application/store_service/create_user.dart';

part 'create_user.g.dart';

@riverpod
CreateUserClass createUserClass(CreateUserClassRef ref) {
  return CreateUserClass();
}
