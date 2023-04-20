import 'package:sugary_map/application/store_provider/update_user/update_user.dart';
import 'package:sugary_map/presentation/export/global_export.dart';
import 'package:sugary_map/presentation/export/router_export.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/account/component/user_profile_provider.dart';

class UpdateUser extends ConsumerWidget {
  const UpdateUser({Key? key}) : super(key: key);

  static const routeName = 'updateUser';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    final selfIntroduction = ref.watch(selfIntroductionProvider);
    final updateUser = ref.read(updateUserClassProvider);
    final updateGlobalKey = ref.watch(userProfileFormKeyProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー情報を更新'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: updateGlobalKey,
          child: Column(
            children: [
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () async {
                  updateUser.imageUpload();
                },
                child: Stack(
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
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: name,
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
                      labelText: '名前を入力'),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 300,
                child: TextFormField(
                  controller: selfIntroduction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'プロフィール情報を入力してください';
                    }
                    return null;
                  },
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      hintText: "プロフィール情報を入力してください",
                      border: OutlineInputBorder()),
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
                      if (updateGlobalKey.currentState!.validate()) {
                        updateUser.updateProfile(
                            name.text, selfIntroduction.text);
                      }
                    },
                    child: const Text(
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
