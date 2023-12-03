import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_lecture/controller/webview_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  void onHomePressed() {
    blogUriController.loadRequest(homeUrl);
  }

  void onBackPressed() {
    blogUriController.goBack();
  }

  void onForwardPressed() {
    blogUriController.goForward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('세영의 블로그'),
          titleTextStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: onBackPressed,
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: onHomePressed,
              icon: const Icon(Icons.home),
            ),
            IconButton(
              onPressed: onForwardPressed,
              icon: const Icon(Icons.arrow_forward),
            )
          ],
        ),
        body: WebViewWidget(
          controller: blogUriController,
        ));
  }
}
