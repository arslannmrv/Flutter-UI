import 'package:flutter/material.dart';
import 'package:twitter/models/twitter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final twitterDatas = TwitterData.fetchAll();
    return ListView.builder(
        itemCount: twitterDatas.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              _buildHomeListTile(context, index, twitterDatas),
              Divider(
                height: 10,
              )
            ],
          );
        });
  }
}

Widget _buildHomeListTile(context, index, twitterDatas) {
  return ListTile(
    leading: CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(twitterDatas[index].profileImage),
    ),
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          twitterDatas[index].name,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            "@account",
            style: TextStyle(
              color: Colors.white30,
              fontSize: 16,
            ),
          ),
        ),
      ],
    ),
    subtitle: Wrap(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                twitterDatas[index].tweet,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    twitterDatas[index].tweetImage,
                    height: 200,
                    fit: BoxFit.cover,
                  )),
            ),
          ],
        ),
        _buildTweetItem(),
      ],
    ),
  );
}

Widget _buildTweetItem() {
  return Row(
    children: [
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.chat_bubble_outline),
              color: Colors.white,
              iconSize: 20,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.repeat),
              color: Colors.white,
              iconSize: 20,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              color: Colors.white,
              iconSize: 20,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.ios_share),
              color: Colors.white,
              iconSize: 20,
              onPressed: () {},
            ),
          ],
        ),
      ),
    ],
  );
}
