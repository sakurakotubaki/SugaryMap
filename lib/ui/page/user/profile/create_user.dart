import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';
import 'package:sugary_map/theme/text_color.dart';

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
        centerTitle: true,
        backgroundColor: MyAppBar.appBar.appColor,
        title: const Text('ユーザー情報を登録'),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Container(
              clipBehavior: Clip.antiAlias,
              width: 160,
              height: 160,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                  labelText: "電話番号を入力"),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                  labelText: "メールアドレスを入力"),
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: MyButton.appButton.appColor),
                onPressed: () {
                  context.go('/map');
                },
                child: Text(
                  '登録',
                  style: TextStyle(color: MyText.textColor.appColor),
                )),
          )
        ],
      ),
    );
  }
}
