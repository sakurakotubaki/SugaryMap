import 'package:sugary_map/presentation/export/global_export.dart';

final userProfileFormKeyProvider = Provider((ref) => GlobalKey<FormState>());

final nameProvider = StateProvider.autoDispose((ref) {
  return TextEditingController(text: '');
});

final selfIntroductionProvider = StateProvider.autoDispose((ref) {
  return TextEditingController(text: '');
});
