import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sugary_map/presentation/state/state_controller/checkbox_controller_state.dart';

part 'checkbox_controller.g.dart';

@riverpod
CheckBoxController checkBoxController(CheckBoxControllerRef ref) {
  return CheckBoxController();
}
