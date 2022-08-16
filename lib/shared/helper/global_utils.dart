import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:url_launcher/url_launcher.dart';

/// Convert `null` value from [Object] to `empty` string.
String stringFromJson(Object? json) => (json as String?) ?? '';

/// Decode to json `2nd` time
/// because consuming `SOAP` api need to convert for second time.
T nextDecode<T>(dynamic json, String key) => jsonDecode(json[key]) as T;

/// Convert `data` of [Response] to [T]
T responseData<T>(Response<dynamic> response) => response.data as T;

/// Launch [Uri] in `Browser`.
Future<void> launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}

/// Launch [Uri] in `InAppWebView`.
Future<void> launchInAppWebView(
  Uri url, {
  Map<String, String> headers = const <String, String>{},
}) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.inAppWebView,
    webViewConfiguration: WebViewConfiguration(
      // Additional headers to pass in the load request.
      headers: headers,
    ),
  )) {
    throw 'Could not launch $url';
  }
}

/// Launch [Uri] in `InAppWebView` withoud `javascript`.
Future<void> launchInWebViewWithoutJavaScript(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.inAppWebView,
    webViewConfiguration: const WebViewConfiguration(
      enableJavaScript: false,
    ),
  )) {
    throw 'Could not launch $url';
  }
}

/// Launch [Uri] in `InAppWebView` withoud `DOM Storage`.
Future<void> launchInWebViewWithoutDomStorage(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.inAppWebView,
    webViewConfiguration: const WebViewConfiguration(
      enableDomStorage: false,
    ),
  )) {
    throw 'Could not launch $url';
  }
}

/// Launch universal [Uri] link in `iOS`.
Future<void> launchUniversalLinkIos(Uri url) async {
  final bool nativeAppLaunchSucceeded = await launchUrl(
    url,
    mode: LaunchMode.externalNonBrowserApplication,
  );
  if (!nativeAppLaunchSucceeded) {
    await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
    );
  }
}
