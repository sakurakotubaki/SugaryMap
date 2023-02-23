import 'package:sugary_map/service/export/global_export.dart';

class UpdateShop extends StatefulWidget {
  const UpdateShop({Key? key}) : super(key: key);

  static const routeName = 'UpdateShop';

  @override
  State<UpdateShop> createState() => _UpdateShopState();
}

class _UpdateShopState extends State<UpdateShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('店舗情報を更新'),
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
                    color: Colors.grey[200],
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
            const SizedBox(height: 20),
            const SizedBox(width: 300, child: Text('Twitterアカウントを登録')),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    labelText: "https://twitter.com/の後から入力"),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(width: 300, child: Text('Instagramアカウントを登録')),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    labelText: "https://www.instagram.com/の後から入力"),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(width: 300, child: Text('Facebookアカウントを登録')),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    labelText: "https://www.facebook.com/の後から入力"),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(width: 300, child: Text('ホームページを登録')),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    labelText: "ホームページのURLを全て貼り付ける"),
              ),
            ),
            const SizedBox(height: 10),

            ///[カレンダーのようなものを配置]

            const SizedBox(height: 20),
            const Text('住所'),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    labelText: "住所を入力"),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(width: 300, child: Text('電話番号')),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    labelText: "電話番号をハイフンなしで入力"),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(width: 300, child: Text('交通手段')),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    labelText: "交通手段を入力"),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(width: 300, child: Text('駐車場')),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    labelText: "駐車場の有無を入力"),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(width: 300, child: Text('お店の紹介を登録')),
            Container(),
            SizedBox(
              width: 300,
              child: TextFormField(
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    hintText: "例: マカロン２０種類を販売する専門店",
                    border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(width: 300, child: Text('画像は４枚まで投稿できます')),
            const SizedBox(height: 10),
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
              width: 200,
              height: 50,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                  onPressed: () {
                    context.go('/admin');
                  },
                  child: const Text(
                    '保存',
                  )),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
