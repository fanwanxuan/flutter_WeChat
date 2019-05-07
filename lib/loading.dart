import 'package:flutter/material.dart';
import 'dart:async'; //异步

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPage createState() => new _LoadingPage();
}

class _LoadingPage extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(seconds: 3), () {
      print('flutter界面实现');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: new Image.asset(
        "images/as1.jpg",
        fit: BoxFit.fill,
      ),
    ));
  }
}
