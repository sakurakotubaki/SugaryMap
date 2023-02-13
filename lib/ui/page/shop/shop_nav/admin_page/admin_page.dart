import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/admin_page/page/admin_history.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/admin_page/page/user_info.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> with TickerProviderStateMixin {
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
        backgroundColor: MyAppBar.appBar.appColor,
        title: const Text('予約管理'),
        bottom: TabBar(
          onTap: (index) {
            _tabController.animateTo(index);
          },
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: '予約履歴',
            ),
            Tab(
              text: '顧客情報',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[AdminHistory(), UserInfo()],
      ),
    );
  }
}
