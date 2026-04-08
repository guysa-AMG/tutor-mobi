import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

String WTC_URL = "https://portal.wethinkco.de";

class WtcPopupScreen extends StatefulWidget {
  @override
  State<WtcPopupScreen> createState() => WtcPopupScreenState();
}

class WtcPopupScreenState extends State<WtcPopupScreen> {
  final webController = WebViewController()
  
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    
    ..loadRequest(Uri.parse(WTC_URL))
    ..setNavigationDelegate(NavigationDelegate());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WebViewWidget(controller: webController));
  }
}
