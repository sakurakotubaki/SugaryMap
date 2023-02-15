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
  List items = [
    "ショートケーキ6号",
    "ショートケーキ5号",
    "ショートケーキ4号",
  ];

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
            GoRouter.of(context).go('/product/product_detail/product_item');
          },
          child: const Icon(Icons.add)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = items[index];
                  return Slidable(
                    key: const ValueKey(0),
                  endActionPane: ActionPane(
                    motion: const DrawerMotion(),
                    // childrenの中にボタンを書く.
                    children: [
                      // 種類ボタン.
                      SlidableAction(
                        onPressed: (value) {},
                        backgroundColor: Colors.green,
                        icon: Icons.category,
                        label: '種類',
                      ),
                      // 編集ボタン.
                      SlidableAction(
                        onPressed: (value) {},
                        backgroundColor: Colors.blue,
                        icon: Icons.edit,
                        label: '編集',
                      ),
                      // 削除ボタン
                      SlidableAction(
                        onPressed: (value) {
                        
                        },
                        backgroundColor: Colors.red,
                        icon: Icons.delete,
                        label: '削除',
                      ),
                    ],
                  ),
                      child: ListTile(
                    title: Text(item),
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
