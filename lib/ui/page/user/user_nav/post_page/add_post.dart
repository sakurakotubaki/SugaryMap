import 'package:sugary_map/service/export/global_export.dart';

class PostAdd extends StatefulWidget {
  const PostAdd({Key? key}) : super(key: key);

  static const routeName = 'PostAdd';

  @override
  State<PostAdd> createState() => _PostAddState();
}

class _PostAddState extends State<PostAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新しい口コミを投稿する'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Stack(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                ),
                const Positioned(
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
            const SizedBox(height: 40),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    labelText: "店舗名を入力"),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: TextFormField(
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    hintText: "お店の口コミを書く", border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(height: 20),
            // TODO(kenta-wakasa): 何を入力すればいいのかわからない。
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    labelText: "https://の後から入力"),
              ),
            ),
            const SizedBox(height: 30),
            Container(), // 空のWidgetを置かないと左に全てよってしまう!
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                  onPressed: () {
                    context.go('/post');
                  },
                  child: const Text(
                    '投稿する',
                  )),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
