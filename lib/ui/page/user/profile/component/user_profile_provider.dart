
import 'package:sugary_map/service/export/global_export.dart';

final userProfileFormKeyProvider = Provider((ref) => GlobalKey<FormState>());

final userNameProvider = StateProvider.autoDispose((ref) {
  return TextEditingController(text: '');
});

final phoneNumberProvider = StateProvider.autoDispose((ref) {
  return TextEditingController(text: '');
});
