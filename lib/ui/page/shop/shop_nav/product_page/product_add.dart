import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/product_page/product_detail.dart';

class ProductAdd extends StatefulWidget {
  ProductAdd({Key? key}) : super(key: key);

  static const routeName = 'productAdd';

  @override
  State<ProductAdd> createState() => _ProductAddState();
}

class _ProductAddState extends State<ProductAdd> {
  String _value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('商品の追加'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              children: [
                SizedBox(height: 50),
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
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey)),
                      labelText: "商品名を入力"),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey)),
                      labelText: "商品説明を入力"),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey)),
                      labelText: "キャンセル可能日を入力"),
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey)),
                      labelText: "上限個数を入力"),
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey)),
                      labelText: "税込価格を入力"),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Row(children: [
                      Radio(
                          value: '通常商品',
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          }),
                      Text('通常商品'),
                    ]),
                    Row(children: [
                      Radio(
                          value: '人気商品',
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          }),
                      Text('人気商品'),
                    ]),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black87),
                      onPressed: () {
                        GoRouter.of(context).goNamed(ProductDetail.routeName);
                      },
                      child: Text('登録')),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
