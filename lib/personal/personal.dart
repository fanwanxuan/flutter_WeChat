import 'package:flutter/material.dart';
import '../common/touch_callback.dart';

class Personal extends StatelessWidget {
  const Personal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        new Positioned(
          right: 0,
          width: 20,
          height: 20,
          child: Icon(Icons.photo_camera),
        ),
        ListView(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(top: 20),
                color: Colors.white,
                height: 80.0,
                child: TouchCallback(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          margin:
                              const EdgeInsets.only(left: 12.0, right: 15.0),
                          child: Image.asset('images/touxiang.png',
                              width: 70, height: 70)),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('轩轩',
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xff353535))),
                            Text('账号:fwx2328503035',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xffa9a9a9))),
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: Image.asset(
                            'images/erweima.png',
                            width: 24,
                            height: 24,
                          ))
                    ],
                  ),
                )),
            //  Container(
            //    margin: const EdgeInsets.only(left:12, right: 15),
            //    child: Image.asset('images/erweima.png',width: 24,height: 24,),
            //  )
          ],
        )
      ],
    ));
  }
}
