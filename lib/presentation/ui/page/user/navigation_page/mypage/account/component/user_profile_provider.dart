
import 'package:sugary_map/presentation/export/global_export.dart';

final userProfileFormKeyProvider = Provider((ref) => GlobalKey<FormState>());

final userNameProvider = StateProvider.autoDispose((ref) {
  return TextEditingController(text: '');
});

