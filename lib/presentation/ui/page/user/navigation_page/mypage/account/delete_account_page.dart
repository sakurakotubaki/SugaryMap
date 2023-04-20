import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sugary_map/application/auth_provider/delete_user/account_deletion_class.dart';
import 'package:sugary_map/presentation/state/state_controller/checkbox_controller_state.dart';

class DeleteAccountPage extends ConsumerWidget {
  const DeleteAccountPage({Key? key}) : super(key: key);

  static const rootName = 'deleteAccountPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isChecked = ref.watch(checkBoxControllerProvider);
    final deleteUser = ref.read(accountDeletionClassProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? newValue) {
                // if文で切り替わっているかチェックする.
                // onChangedのところでメソッドを実行する.
                if (newValue != null) {
                  ref.read(checkBoxControllerProvider.notifier).toggle();
                }
              },
            ),
            ElevatedButton(
              // 三項演算子で、ボタンのグレーアウトの切り替えをする
              onPressed: isChecked
                  ? () async {
                      deleteUser.deleteAccount();
                    }
                  : null,
              child: Text('退会する'),
              style: ElevatedButton.styleFrom(
                backgroundColor: isChecked ? Colors.redAccent : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
