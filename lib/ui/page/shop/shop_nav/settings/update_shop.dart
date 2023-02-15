import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';
import 'package:sugary_map/theme/text_color.dart';

class UpdateShop extends StatefulWidget {
  UpdateShop({Key? key}) : super(key: key);

  static const routeName = 'UpdateShop';

  @override
  State<UpdateShop> createState() => _UpdateShopState();
}

class _UpdateShopState extends State<UpdateShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyAppBar.appBar.appColor,
        title: const Text('店舗情報を更新'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Stack(
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
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Align(
                  alignment: Alignment.topLeft, child: Text('Twitterアカウントを登録')),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
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
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Instagramアカウントを登録')),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
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
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Facebookアカウントを登録')),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
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
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child:
                  Align(alignment: Alignment.topLeft, child: Text('ホームページを登録')),
            ),
            SizedBox(height: 10),
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
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.calendar_month)),
                  SizedBox(width: 10),
                  Text('営業日を入力')
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Align(alignment: Alignment.topLeft, child: Text('住所')),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
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
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Align(alignment: Alignment.topLeft, child: Text('電話番号')),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
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
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Align(alignment: Alignment.topLeft, child: Text('交通手段')),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
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
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Align(alignment: Alignment.topLeft, child: Text('駐車場')),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
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
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child:
                  Align(alignment: Alignment.topLeft, child: Text('お店の紹介を登録')),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText: "例: マカロン２０種類を販売する専門店",
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Align(
                  alignment: Alignment.topLeft, child: Text('画像は４枚まで投稿できます')),
            ),
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
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyButton.appButton.appColor),
                  onPressed: () {},
                  child: Text(
                    '保存',
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