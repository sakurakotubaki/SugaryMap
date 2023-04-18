import 'package:riverpod_annotation/riverpod_annotation.dart'; // このコードを書く

part 'checkbox_controller_state.g.dart'; // note_providerのところは、ファイル名と同じにする.

@riverpod
class CheckBoxController extends _$CheckBoxController {
  // Notifierはbuildのreturnの中に、初期値を書く.
  // OFFにするので初期値は、false.
  @override
  build() {
    return false;
  }

  // 状態を持ったメソッドを定義する。等しくなければチェックボックスがONになる.
  // 等しければ、チェックボックスがOFFになる。最初は、OFFの状態.
  void toggle() {
    state = !state;
  }
}
