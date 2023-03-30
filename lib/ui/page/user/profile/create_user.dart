// ignore_for_file: unused_local_variable, unnecessary_import, unused_import, prefer_single_quotes

import 'package:flutter/services.dart';
import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/ui/page/user/profile/data_service/user_data_service.dart';
import 'package:sugary_map/ui/page/user/profile/component/custom_form_field.dart';
import 'package:sugary_map/ui/page/user/profile/component/custom_input_number.dart';
import 'package:sugary_map/ui/page/user/profile/component/user_profile_provider.dart';
import 'package:sugary_map/ui/page/user/navigation_page/map_page/home_page.dart';

class CreateUser extends ConsumerWidget {
  const CreateUser({super.key});

  static const routeName = 'createUser';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userGlobalKey = ref.watch(userProfileFormKeyProvider);
    final nameController = ref.watch(userNameProvider);
    final phoneController = ref.watch(phoneNumberProvider);
    final newUser = ref.read(userDataServiceClassProvider.notifier).state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー情報を登録'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: userGlobalKey,
          child: Column(
            children: [
              const SizedBox(height: 50),
              Stack(
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[400],
                    ),
                  ),
                  const Positioned(
                    right: 10,
                    bottom: 10,
                    child: CircleAvatar(
                        maxRadius: 30.0,
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.camera_alt,
                          size: 30,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return '名前を入力してください';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.grey)),
                      labelText: "名前を入力"),
                ),
              ),
              const SizedBox(height: 20),
              Container(
              width: 300,
              child: TextFormField(
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    hintText: "プロフィール情報を入力してください", border: OutlineInputBorder()),
              ),
            ),
              const SizedBox(height: 20),
              Container(),
              const SizedBox(height: 30),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black87),
                    onPressed: () async {
                      if (userGlobalKey.currentState!.validate()) {
                        newUser.newUserProfile(
                            nameController.text, phoneController.text);
                      }
                    },
                    child: Text(
                      '登録',
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
