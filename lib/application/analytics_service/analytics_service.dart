import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  Future<void> logEvent() async {
    await analytics
        .logEvent(name: 'ユーザーがログインしました', parameters: <String, dynamic>{
      'button_name': 'login_button',
    });
  }
}
