import 'package:url_launcher/url_launcher.dart';

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
