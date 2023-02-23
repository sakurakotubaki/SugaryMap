import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/admin_page/admin_page.dart';

class CreateShop extends StatefulWidget {
  CreateShop({Key? key}) : super(key: key);

  static const routeName = 'CreateShop';

  @override
  State<CreateShop> createState() => _CreateShopState();
}

class _CreateShopState extends State<CreateShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('店舗情報を登録'),
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
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueGrey,
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
            SizedBox(height: 20),
            Container(width: 300, child: Text('Twitterアカウントを登録')),
            SizedBox(height: 10),
            Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "https://twitter.com/の後から入力"),
              ),
            ),
            SizedBox(height: 20),
            Container(width: 300, child: Text('Instagramアカウントを登録')),
            SizedBox(height: 10),
            Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "https://www.instagram.com/の後から入力"),
              ),
            ),
            SizedBox(height: 20),
            Container(width: 300, child: Text('Facebookアカウントを登録')),
            SizedBox(height: 10),
            Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "https://www.facebook.com/の後から入力"),
              ),
            ),
            SizedBox(height: 20),
            Container(width: 300, child: Text('ホームページを登録')),
            SizedBox(height: 10),
            Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "ホームページのURLを全て貼り付ける"),
              ),
            ),
            SizedBox(height: 10),

            ///[カレンダーのようなものを配置]

            SizedBox(height: 20),
            Text('住所'),
            SizedBox(height: 10),
            Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "住所を入力"),
              ),
            ),
            SizedBox(height: 20),
            Container(width: 300, child: Text('電話番号')),
            SizedBox(height: 10),
            Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "電話番号をハイフンなしで入力"),
              ),
            ),
            SizedBox(height: 20),
            Container(width: 300, child: Text('交通手段')),
            SizedBox(height: 10),
            Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "交通手段を入力"),
              ),
            ),
            SizedBox(height: 20),
            Container(width: 300, child: Text('駐車場')),
            SizedBox(height: 10),
            Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "駐車場の有無を入力"),
              ),
            ),
            SizedBox(height: 20),
            Container(width: 300, child: Text('お店の紹介を登録')),
            Container(),
            Container(
              width: 300,
              child: TextFormField(
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText: "例: マカロン２０種類を販売する専門店",
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(height: 20),
            Container(width: 300, child: Text('画像は４枚まで投稿できます')),
            SizedBox(height: 10),
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
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                  onPressed: () {
                    context.go('/admin');
                  },
                  child: Text(
                    '登録',
                  )),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
