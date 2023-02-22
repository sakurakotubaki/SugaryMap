import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('商品管理'),
        centerTitle: true,
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          onPressed: () {
            GoRouter.of(context).go('/product/product_detail/product_add');
          },
          child: const Icon(Icons.add)),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            Container(
              // 水平方向にContainerを寄せる.
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                // グレーの正方形を上に寄せる設定.
                crossAxisAlignment: CrossAxisAlignment.start,
                verticalDirection: VerticalDirection.down,
                children: [
                  Column(
                    // Textを全て左端に寄せる設定.
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Text('ショートケーキ５号'),
                      SizedBox(height: 10),
                      Text('直径15cm、4~6人分、\n茨城いちごとコクのある\n47%の生クリームのケーキ'),
                      SizedBox(height: 10),
                      Text('キャンセル可能日3日前まで'),
                      SizedBox(height: 10),
                      Text('残り8'),
                      SizedBox(height: 10),
                      Text('¥3200'),
                    ],
                  ),
                  SizedBox(width: 20),
                  Container(
                      margin: const EdgeInsets.only(top: 1.0, right: 1.0),
                      width: 100,
                      height: 100,
                      color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              // 水平方向にContainerを寄せる.
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                // グレーの正方形を上に寄せる設定.
                crossAxisAlignment: CrossAxisAlignment.start,
                verticalDirection: VerticalDirection.down,
                children: [
                  Column(
                    // Textを全て左端に寄せる設定.
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Text('ショートケーキ4号'),
                      SizedBox(height: 10),
                      Text('直径12cm、2~4人分、\n茨城いちごとコクのある\n47%の生クリームのケーキ'),
                      SizedBox(height: 10),
                      Text('キャンセル可能日3日前まで'),
                      SizedBox(height: 10),
                      Text('残り3'),
                      SizedBox(height: 10),
                      Text('¥2400'),
                    ],
                  ),
                  SizedBox(width: 20),
                  Container(
                      margin: const EdgeInsets.only(top: 1.0, right: 1.0),
                      width: 100,
                      height: 100,
                      color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              // 水平方向にContainerを寄せる.
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                // グレーの正方形を上に寄せる設定.
                crossAxisAlignment: CrossAxisAlignment.start,
                verticalDirection: VerticalDirection.down,
                children: [
                  Column(
                    // Textを全て左端に寄せる設定.
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Text('ガトーショコラ4号'),
                      SizedBox(height: 10),
                      Text('直径12cm、2~4人分、\nフランス産ダークチョコを\n使用。リッチな味わい'),
                      SizedBox(height: 10),
                      Text('キャンセル可能日3日前まで'),
                      SizedBox(height: 10),
                      Text('残り2'),
                      SizedBox(height: 10),
                      Text('¥2500'),
                    ],
                  ),
                  SizedBox(width: 20),
                  Container(
                      margin: const EdgeInsets.only(top: 1.0, right: 1.0),
                      width: 100,
                      height: 100,
                      color: Colors.grey),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
