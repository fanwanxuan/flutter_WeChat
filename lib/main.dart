import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart'; // 内嵌功能得依赖包
import './loading.dart';
import './app.dart';
import './chat/search.dart';
void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  _MyApp createState() => new _MyApp();
}

class _MyApp extends State<MyApp> {
  final ThemeData newThemeData = new ThemeData(
      primaryColor: Color(0xfff3f4f5),
      bottomAppBarColor: Color(0xff27292E),
       cardColor: Color(0xff393a3f),
      scaffoldBackgroundColor: Color(0xfff3f4f5), //页面内得颜色
      );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'qq',
        theme: newThemeData,
        routes: <String, WidgetBuilder>{
          "app": (BuildContext context) => new App(),
          "search": (BuildContext context) => new Search(),
          /**WebviewScaffold 内嵌* */
          '/friends': (_) => new WebviewScaffold(
                url: 'https://flutter.io/',
                appBar: new AppBar(
                  title: new Text('flutter官网'),
                ),
                withZoom: true,
                withLocalStorage: true,
              )
        },
        home: new LoadingPage());
  }
}
