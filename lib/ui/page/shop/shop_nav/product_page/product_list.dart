import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  // List _items = [
  //   "ホールケーキ",
  //   "プティガトー",
  //   "チョコレート",
  // ];
  final List<int> _items = List<int>.generate(50, (int index) => index);
  bool _flag = false;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                setState(() {
                  _flag = !_flag;
                });
              },
              child: Text('編集'))
        ],
        title: const Text('商品管理'),
        centerTitle: true,
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10.0)),
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
                            padding:
                                const EdgeInsets.only(left: 100, right: 50),
                            child: Row(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            MyButton.appButton.appColor),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('作成')),
                                const SizedBox(width: 50),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            MyButton.appButton.appColor),
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
          },
          child: const Icon(Icons.add)),
      body: _flag
          ? TrueList(context, oddItemColor, evenItemColor)
          : FalseList(context, oddItemColor, evenItemColor),
    );
  }

  Center FalseList(
      BuildContext context, Color oddItemColor, Color evenItemColor) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
              child: ReorderableListView(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            children: <Widget>[
              for (int index = 0; index < _items.length; index += 1)
                ListTile(
                  onTap: () {
                    GoRouter.of(context).go('/product/product_detail');
                  },
                  key: Key('$index'),
                  tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
                  title: Text('Item ${_items[index]}'),
                ),
            ],
            onReorder: (int oldIndex, int newIndex) {
              setState(() {
                if (oldIndex < newIndex) {
                  newIndex -= 1;
                }
                final int item = _items.removeAt(oldIndex);
                _items.insert(newIndex, item);
              });
            },
          ))
        ],
      ),
    );
  }

  Center TrueList(
      BuildContext context, Color oddItemColor, Color evenItemColor) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
              child: ReorderableListView(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            children: <Widget>[
              for (int index = 0; index < _items.length; index += 1)
                ListTile(
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz_rounded)),
                        const Icon(Icons.menu),
                      ],
                    ),
                  ),
                  onTap: () {
                    GoRouter.of(context).go('/product/product_detail');
                  },
                  key: Key('$index'),
                  tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
                  title: Text('Item ${_items[index]}'),
                ),
            ],
            onReorder: (int oldIndex, int newIndex) {
              setState(() {
                if (oldIndex < newIndex) {
                  newIndex -= 1;
                }
                final int item = _items.removeAt(oldIndex);
                _items.insert(newIndex, item);
              });
            },
          ))
        ],
      ),
    );
  }
}
