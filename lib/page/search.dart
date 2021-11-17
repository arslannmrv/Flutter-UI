import 'package:flutter/material.dart';
import 'package:twitter/constants.dart';
import 'package:twitter/models/twitter.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final twitterDatas = TwitterData.fetchAll();
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            Constants.search_text,
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: twitterDatas.length,
                itemBuilder: (context, i) {
                  return _searcListItem(twitterDatas, i);
                }))
      ]),
    );
  }
}

Widget _searcListItem(twitterDatas, i) {
  return ListTile(
    title: Text(
      twitterDatas[i].hashtag,
      style: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
    ),
    trailing: Icon(
      Icons.keyboard_arrow_down,
      color: Colors.white30,
    ),
  );
}
