import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/ui/component/profile/custom_form_field.dart';
import 'package:sugary_map/ui/component/profile/custom_input_number.dart';
import 'package:sugary_map/ui/page/user/user_nav/map_page/map_page.dart';

class CreateUser extends StatefulWidget {
  CreateUser({Key? key}) : super(key: key);

  static const routeName = 'createUser';

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー情報を登録'),
      ),
      body: SingleChildScrollView(
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
                Positioned(
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
            CustomFormField(labelText: '名前を入力'),
            const SizedBox(height: 20),
            CustomInputNumber(labelText: '電話番号を入力'),
            const SizedBox(height: 20),
            Container(),
            const SizedBox(height: 30),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                  onPressed: () {
                    context.goNamed(MapPage.routeName);
                  },
                  child: Text(
                    '登録',
                  )),
            )
          ],
        ),
      ),
    );
  }
}
