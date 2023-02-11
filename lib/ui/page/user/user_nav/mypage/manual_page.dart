import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

class ManualPage extends StatelessWidget {
  const ManualPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('使い方'),
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40),
              Text("""
              まだ知らないお店を探そう。
              地域のお店で美味しいお店があれば
              紹介しよう。
              ユーザーは、各地のお菓子屋さんを
              Mapの機能で検索して探す以外に、
              自由に投稿できるページの情報を見
              て、地元以外に他の地域の知らない
              お店を見つけることができます。
                    """, style: TextStyle(fontSize: 15)),
              SizedBox(height: 20),
              Text("""
              アプリに登録してくれたお店は、
              商品をアプリから予約すること
              ができます。
              表示されている商品リストを選んで
              カートに入れるだけで、予約ができ
              ます。
              その日、お店の商品が出ている数が
              見れたり、電話をしなくても取り置き
              が予約がボタンを押すだけでできま
              す。
              予約を確定しても、お店にいくのが
              遅れそう、今日はキャンセルしたいと
              急な変更を条件や期限内であれば、
              キャンセルできます。
                    """, style: TextStyle(fontSize: 15)),
            ],
          ),
        ),
      ),
    );
  }
}
