import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/admin_page/page/admin_history.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/admin_page/page/user_details/concentration/concentration.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/admin_page/page/user_details/item_history/item_history.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/admin_page/page/user_info.dart';

class HistoryTab extends StatefulWidget {
  const HistoryTab({Key? key}) : super(key: key);

  static const routeName = 'historyTab';

  @override
  State<HistoryTab> createState() => _HistoryTabState();
}

class _HistoryTabState extends State<HistoryTab> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('顧客情報詳細'),
        bottom: TabBar(
          onTap: (index) {
            _tabController.animateTo(index);
          },
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: '購入履歴',
            ),
            Tab(
              text: '購入履歴集計',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ItemHistory(),
          Concentration(),
        ],
      ),
    );
  }
}
