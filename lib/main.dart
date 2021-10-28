import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:udit_jharkhand/splash.dart';

void main() {
  runApp(MaterialApp(home: Splash()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final flutterWebViewPlugin = FlutterWebviewPlugin();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: SafeArea(
        child: WebviewScaffold(
          appBar: AppBar(
            title: Text('Web View App'),
          ),
          url: 'https://h2945398.stratoserver.net:3000/',
          debuggingEnabled: true,
          initialChild: Center(
            child: CircularProgressIndicator(),
          ),
          withJavascript: true,
          withZoom: true,
          allowFileURLs: true,
          appCacheEnabled: true,
          displayZoomControls: true,
        ),
      ),
    );
  }
}
