import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';
import 'package:sugary_map/theme/text_color.dart';

class AddPost extends StatefulWidget {
  AddPost({Key? key}) : super(key: key);

  static const routeName = 'AddPost';

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyAppBar.appBar.appColor,
        title: const Text('新しい口コミを投稿する'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Stack(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                ),
                Positioned(
                  bottom: 55,
                  right: 55,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                    size: 50.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "店舗名を入力"),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 30, right: 50, left: 50),
              child: TextFormField(
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText: "お店の口コミを書く", border: OutlineInputBorder()),
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
                    labelText: "https://の後から入力"),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(height: 40),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyButton.appButton.appColor),
                  onPressed: () {
                    context.go('/post');
                  },
                  child: Text(
                    '投稿する',
                    style: TextStyle(color: MyText.textColor.appColor),
                  )),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
