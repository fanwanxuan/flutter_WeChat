/**
 * SYSTEM 系统
 * PUBLTC 公共
 * CHAT 私聊
 * GROUP 群聊
 */
enum MessageType { SYSTEM, PUBLTC, CHAT, GROUP }

class MessageData {
  String avatar; //头像
  String title; //标题
  String subTitle; //子标题
  DateTime time;
  MessageType type;
  MessageData(this.avatar, this.title, this.subTitle, this.time, this.type);
}

List<MessageData> messageData = [
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.GROUP),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.GROUP),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/touxiang.png', '宝贝', '你在干什么呢？', new DateTime.now(),
      MessageType.CHAT),
  new MessageData('images/ba.jpg', '一家人', '你可以和你阿姨说话了', new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'images/ting.jpg', '婷婷', '你辞职了没有？', new DateTime.now(), MessageType.CHAT),
];

