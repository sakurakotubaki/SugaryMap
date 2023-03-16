import 'package:sugary_map/service/export/global_export.dart';

final signinFormKeyProvider = Provider((ref) => GlobalKey<FormState>());
final signupFormKeyProvider = Provider((ref) => GlobalKey<FormState>());
final shopSignupFormKeyProvider = Provider((ref) => GlobalKey<FormState>());

final emailProvider = StateProvider.autoDispose((ref) {
  return TextEditingController(text: '');
});

final passwordProvider = StateProvider.autoDispose((ref) {
  return TextEditingController(text: '');
});