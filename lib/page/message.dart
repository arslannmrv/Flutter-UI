import 'package:flutter/material.dart';
import 'package:twitter/models/twitter.dart';

class Message extends StatefulWidget {
  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    final twitterDatas = TwitterData.fetchAll();
    return ListView.builder(
        itemCount: twitterDatas.length,
        itemBuilder: (context, i) {
          return _buildMessageListItem(i, twitterDatas);
        });
  }
}

Widget _buildMessageListItem(i, twitterDatas) {
  return ListTile(
    leading: CircleAvatar(
      radius: 25,
      backgroundImage: NetworkImage(twitterDatas[i].profileImage),
    ),
    title: Text(
      twitterDatas[i].name,
      style: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
    ),
    subtitle: Container(
      padding: EdgeInsets.only(top: 5),
      child: Text(
        twitterDatas[i].message,
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    ),
  );
}
