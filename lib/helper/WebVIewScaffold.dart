import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewScaffolda extends StatelessWidget {
  final String url;

  WebViewScaffolda({required this.url});

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
        url: url,
        appBar: new AppBar(
          title: new Text("Widget webview"),
        ));
  }
}
