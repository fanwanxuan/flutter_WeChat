import 'package:flutter/material.dart';

class TouchCallback extends StatefulWidget {
  /**
   * 子组件
   */
  final Widget child;
  /**
   * 回调函数
   */
  final VoidCallback onPressed;
  final bool isFend;
  /**
   * 背景色
   */
  final Color background;

  TouchCallback({
    Key key,
    @required this.child,
    @required this.onPressed,
    this.isFend = true,
    this.background: const Color(0xfff3f4f5),
  }) : super(key: key);

  _TouchCallback createState() => _TouchCallback();
}

class _TouchCallback extends State<TouchCallback> {
  Color color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(color: color, child: widget.child),
      onTap: widget.onPressed,
      onPanDown: (d) {
        if (widget.isFend == false) return;
        setState(() {
          color = widget.background;
        });
      },
      onPanCancel: () {
        setState(() {
          color = Colors.transparent;
        });
      },
    );
  }
}
