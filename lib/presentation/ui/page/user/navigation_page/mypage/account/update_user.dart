import 'package:sugary_map/presentation/export/global_export.dart';
import 'package:sugary_map/presentation/export/router_export.dart';
import 'package:sugary_map/presentation/ui/page/user/profile/component/custom_form_field.dart';
import 'package:sugary_map/presentation/ui/page/user/profile/component/custom_input_number.dart';

class UpdateUser extends StatefulWidget {
  UpdateUser({Key? key}) : super(key: key);

  static const routeName = 'UpdateUser';

  @override
  State<UpdateUser> createState() => _UpdateUserState();
}

class _UpdateUserState extends State<UpdateUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー情報を更新'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
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
            SizedBox(height: 50),
            // CustomFormField(labelText: '名前を入力', nameController: ),
            const SizedBox(height: 20),
            // CustomInputNumber(labelText: '電話番号をハイフンなしで入力'),
            const SizedBox(height: 50),
            Container(),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                  onPressed: () {},
                  child: Text(
                    '保存',
                  )),
            )
          ],
        ),
      ),
    );
  }
}
