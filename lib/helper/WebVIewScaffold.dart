import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScaffolda extends StatefulWidget {
  final String url;

  WebViewScaffolda({required this.url});

  @override
  State<WebViewScaffolda> createState() => _WebViewScaffoldaState();
}

class _WebViewScaffoldaState extends State<WebViewScaffolda> {
  int position = 1;

  final key = UniqueKey();

  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }

  startLoading(String A) {
    setState(() {
      position = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: position == 1
              ? Text("Data Is Loading")
              : Text("Learn This Question"),
          backgroundColor: position == 1 ? Colors.blueAccent : Colors.black,
        ),
        body: IndexedStack(index: position, children: <Widget>[
          WebView(
            initialUrl: widget.url,
            javascriptMode: JavascriptMode.unrestricted,
            key: key,
            onPageFinished: doneLoading,
            onPageStarted: startLoading,
          ),
          Container(
            color: Colors.white,
            child: Center(child: CircularProgressIndicator()),
          ),
        ]));
  }
}
