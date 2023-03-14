import 'package:sugary_map/service/export/global_export.dart';

class Concentration extends StatefulWidget {
  Concentration({Key? key}) : super(key: key);

  static const rootName = 'Concentration';

  @override
  State<Concentration> createState() => _ConcentrationState();
}

class _ConcentrationState extends State<Concentration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Table(
              border: TableBorder.all(color: Colors.grey),
              children: <TableRow>[
                TableRow(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                    ),
                    children: ['商品', '購入数', '合計']
                        .map((e) => Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(e)))
                        .toList()),
                TableRow(
                  children: ['シュークリーム', '10', '¥2700']
                      .map((e) => Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(e)))
                      .toList(),
                ),
                TableRow(
                  children: ['ショートケーキ', '5', '¥2100']
                      .map((e) => Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(e)))
                      .toList(),
                ),
                TableRow(
                  children: ['チーズケーキ', '3', '¥1260']
                      .map((e) => Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(e)))
                      .toList(),
                ),
                TableRow(
                  children: ['ディアマン', '3', '¥1500']
                      .map((e) => Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(e)))
                      .toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
