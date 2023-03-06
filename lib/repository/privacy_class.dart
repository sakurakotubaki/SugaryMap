import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

// プライバシーポリシーページを表示
class PrivacyClass {
  void showPrivacy() async {
    const privacyUrl = 'https://regal-conkies-8c51fb.netlify.app/';
    final url = Uri.parse(
      privacyUrl,
    );
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      // ignore: avoid_print
      // print("Can't launch $url");
    }
  }

  // 利用規約ページを表示
  void showTerms() async {
    const termsUrl = 'https://chipper-dodol-e61ef8.netlify.app/';
    final url = Uri.parse(
      termsUrl,
    );
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      // ignore: avoid_print
      // print("Can't launch $url");
    }
  }
}
