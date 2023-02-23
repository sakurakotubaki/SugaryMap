import 'package:sugary_map/service/export/global_export.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<String> itemList = [
    "2 ショートケーキ ¥500",
    "3 ガトーショコラ ¥500",
    "3 シュークリーム ¥900"
  ];

  void _showBottomSheetMenu(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        builder: (builder) {
          return Container(
            height: 800.0,
            color: Colors.transparent,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const Text("サロンド・エゴ"),
                  Expanded(
                    child: ListView.builder(
                      itemCount: itemList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          onTap: () => {
                            GoRouter.of(context).go('/cart/cart_update'),
                          },
                          title: Text(itemList[index]),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        GoRouter.of(context).go('/cart/total');
                      },
                      child: const Text('お会計に進む'))
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('カート'),
      ),
      body: Center(
        child: Column(
          children: const <Widget>[
            SizedBox(height: 40),
            PostParts(shopName: "Kenzirou", shopCount: 3),
            SizedBox(height: 20),
            PostParts(shopName: "Ego", shopCount: 5),
          ],
        ),
      ),
    );
  }
}

class PostParts extends StatelessWidget {
  const PostParts({
    super.key,
    required this.shopName,
    required this.shopCount,
  });

  final String shopName;
  final int shopCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // TODO(kenta-wakasa): 全体に対してやったほうが良さそう
        GestureDetector(
          onTap: () {
            GoRouter.of(context).go('/cart/total');
          },
          child: Container(
            // 水平方向にContainerを寄せる.
            // 左端にスペースを20.0空ける.
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            width: 100,
            height: 100,
            color: Colors.grey,
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: 200,
          height: 100,
          child: Column(
            // Textを全て左端に寄せる設定.
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            children: [
              Text(shopName),
              const SizedBox(height: 10),
              Text('$shopCount点の商品'),
            ],
          ),
        ),
      ],
    );
  }
}
