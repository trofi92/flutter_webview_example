import 'package:webview_flutter/webview_flutter.dart';

final blogUrl = Uri.parse('https://blog.naver.com/luna_slash');
final homeUrl = Uri.parse('http://www.naver.com');
WebViewController blogUriController = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(blogUrl)
  ..canGoBack()
  ..canGoForward();
