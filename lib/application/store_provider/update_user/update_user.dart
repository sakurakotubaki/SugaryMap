import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sugary_map/application/store_service/update_user.dart';

part 'update_user.g.dart';

@riverpod
UpdateUserClass updateUserClass(UpdateUserClassRef ref) {
  return UpdateUserClass();
}
