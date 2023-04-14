import 'package:sugary_map/presentation/export/global_export.dart';

class ManualPage extends StatelessWidget {
  const ManualPage({Key? key}) : super(key: key);

  static const routeName = 'manualPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('使い方'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 40),
              Container(
                width: 350,
                child: Text(
                    "まだ知らないお店を探そう。地域のお店で美味しいお店があれば紹介しよう。ユーザーは、各地のお菓子屋さんをMapの機能で検索して探す以外に、自由に投稿できるページの情報を見て、地元以外に他の地域の知らないお店を見つけることができます。",
                    style: TextStyle(fontSize: 15)),
              ),
              const SizedBox(height: 20),
              Container(
                width: 350,
                child: Text(
                    "アプリに登録してくれたお店は、商品をアプリから予約することができます。表示されている商品リストを選んでカートに入れるだけで、予約ができます。その日、お店の商品が出ている数が見れたり、電話をしなくても取り置きが予約がボタンを押すだけでできます。予約を確定しても、お店にいくのが遅れそう、今日はキャンセルしたいと急な変更を条件や期限内であれば、キャンセルできます。",
                    style: TextStyle(fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
