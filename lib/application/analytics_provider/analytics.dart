import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sugary_map/application/analytics_service/analytics_service.dart';
import 'package:sugary_map/application/auth_service/reset_email.dart';

part 'analytics.g.dart';

@riverpod
AnalyticsService analyticsService(AnalyticsServiceRef ref) {
  return AnalyticsService();
}