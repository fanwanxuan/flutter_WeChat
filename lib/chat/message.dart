import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './message_page.dart';

class MessageAll extends StatelessWidget {
  @override
  /**_ShowMenu
   * 显示菜单  
   */
  _ShowMenu(String title, {String imagePath, IconData icon}) {
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          imagePath != null
              ? Image.asset(
                  imagePath,
                  width: 32.0,
                  height: 32.0,
                )
              : SizedBox(
                  height: 32.0,
                  width: 32.0,
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0,
          title: new Text('微信(21) '),
          actions: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'search');
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                child: new Icon(Icons.search),
              ),
            ),
            InkWell(
              onTap: () {
                showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                    items: <PopupMenuEntry>[
                      _ShowMenu('发起会话', icon: Icons.group_add),
                      _ShowMenu('添加朋友', icon: Icons.add),
                      _ShowMenu('首付款', icon: Icons.crop_free),
                      _ShowMenu('帮助与反馈', icon: Icons.email),
                    ]);
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: new Icon(Icons.add),
              ),
            ),
          ],
        ),
        body: new MessagePage());
  }
}
