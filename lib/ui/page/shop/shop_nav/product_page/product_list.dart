import 'package:sugary_map/service/export/global_export.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  static const routeName = 'productList';

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final items = ['ホールケーキ', 'プティガトー', '焼き菓子', 'ゼリー'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('商品管理'),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.redAccent,
            onPressed: () {
              _createModal(context);
            },
            child: const Icon(Icons.add)),
        body: ReorderableListView(
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (newIndex > oldIndex) newIndex--;

              final item = items.removeAt(oldIndex);
              items.insert(newIndex, item);
            });
          },
          children: [
            for (final item in items)
              ListTile(
                onTap: () => {
                  GoRouter.of(context).go('/product/product_detail'),
                },
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: const Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.redAccent,
                ),
                key: ValueKey(item),
                title: Text(item),
              )
          ],
        ));
  }

  Future<dynamic> _createModal(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        builder: (builder) {
          return Container(
            height: 200.0,
            color: Colors.transparent,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Text("商品カテゴリを作成"),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, right: 50),
                    child: Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black87),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('作成')),
                        const SizedBox(width: 50),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black87),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('閉じる')),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
