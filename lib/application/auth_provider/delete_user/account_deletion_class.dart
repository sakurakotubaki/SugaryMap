import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sugary_map/application/auth_service/account_deletions.dart';

part 'account_deletion_class.g.dart';

@riverpod
AccountDeletionClass accountDeletionClass(AccountDeletionClassRef ref) {
  return AccountDeletionClass();
}
