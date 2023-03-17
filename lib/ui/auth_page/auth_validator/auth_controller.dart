import 'package:sugary_map/service/export/global_export.dart';

// final signInFormKeyProvider = Provider((ref) => GlobalKey<FormState>());
// final userSignUpFormKeyProvider = Provider((ref) => GlobalKey<FormState>());
// final shopSignUpFormKeyProvider = Provider((ref) => GlobalKey<FormState>());

final emailProvider = StateProvider.autoDispose((ref) {
  return TextEditingController(text: '');
});

final passwordProvider = StateProvider.autoDispose((ref) {
  return TextEditingController(text: '');
});