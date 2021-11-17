import 'package:flutter/material.dart';
import 'package:twitter/models/twitter.dart';

class Notificationn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final twitterDatas = TwitterData.fetchAll();
    return ListView.builder(
        itemCount: twitterDatas.length,
        itemBuilder: (context, i) {
          return _listItem(twitterDatas, i);
        });
  }
}

Widget _listItem(twitterDatas, i) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Container(
      child: ListTile(
        leading: Icon(
          Icons.favorite,
          color: Colors.red,
        ),
        title: Container(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            twitterDatas[i].notification,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                overflow: TextOverflow.ellipsis),
          ),
        ),
      ),
    ),
  );
}
