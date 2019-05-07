import 'package:flutter/material.dart';
import './chat/message.dart';
import './contacts/contact.dart';
import './personal/personal.dart';

class App extends StatefulWidget {
  @override
  _App createState() => _App();
}

class _App extends State<App> with SingleTickerProviderStateMixin {
  TabController controller; //tab控制器
  int _currentIndex = 0; //当前点击得tab得下标
  var imgTab; // 图片

  Image getImagePath(path) {
    return Image.asset(path, width: 20, height: 20);
  }

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
    // 添加监听，记录当前得索引
    controller
        .addListener(() => {setState(() => _currentIndex = controller.index)});
    if (imgTab == null) {
      imgTab = [
        [
          getImagePath('images/message.png'),
          getImagePath('images/message_check.png'),
        ],
        [
          getImagePath('images/contacts.png'),
          getImagePath('images/contacts_check.png'),
        ],
        [
          getImagePath('images/find.png'),
          getImagePath('images/find_check.png'),
        ],
        [
          getImagePath('images/mine.png'),
          getImagePath('images/mine_check.png'),
        ]
      ];
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Image tabIcom(int current) {
    print(current);
    print(_currentIndex == current);
    if (_currentIndex == current) {
      return imgTab[current][1];
    }
    return imgTab[current][0];
  }

  @override
  Widget build(BuildContext context) {
    var tabs = <Tab>[
      new Tab(icon: tabIcom(0), text: '消息'),
      new Tab(icon: tabIcom(1), text: '通讯录'),
      new Tab(icon: tabIcom(2), text: '发现'),
      new Tab(icon: tabIcom(3), text: '我的')
    ];
    return Scaffold(
      body: new TabBarView(
          controller: controller,
          children: <Widget>[MessageAll(), Contact(), Personal(), Personal()]),
      bottomNavigationBar: new Material(
        color: Color(0xff3f4f5),
        child: Container(
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(width: 0.5, color: Colors.grey[300]),
            )),
            height: 60,
            child: new TabBar(
              controller: controller,
              tabs: tabs,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.all(0),
              indicatorColor: Colors.transparent,
              unselectedLabelColor: const Color(0xff202020),
              labelColor: Colors.green,
              labelStyle: TextStyle(color: Colors.green),
            )),
      ),
    );
  }
}
