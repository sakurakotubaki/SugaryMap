import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/export/router_export.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({Key? key}) : super(key: key);

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
            Container(
              clipBehavior: Clip.antiAlias,
              width: 160,
              height: 160,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 250,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    labelText: "電話番号を入力"),
              ),
            ),
            const SizedBox(height: 20),

            /// メールアドレスは2回入力させる必要ないのでは？
            SizedBox(
              width: 250,
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey)),
                  labelText: "メールアドレスを入力",
                ),
              ),
            ),
            Container(),
            const SizedBox(height: 50),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                  onPressed: () {
                    context.go('/map');
                  },
                  child: const Text(
                    '登録',
                  )),
            )
          ],
        ),
      ),
    );
  }
}
