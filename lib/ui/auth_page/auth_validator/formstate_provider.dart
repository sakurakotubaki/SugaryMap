import 'package:sugary_map/service/export/global_export.dart';

final formKeyProvider = StateProvider((ref) => GlobalKey<FormState>());

final emailProvider = StateProvider.autoDispose((ref) {
  return TextEditingController(text: '');
});

final passwordProvider = StateProvider.autoDispose((ref) {
  return TextEditingController(text: '');
});