import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      body: Container(
        child: ListView(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(top: 10.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      'https://www.inovex.de/blog/wp-content/uploads/2019/01/Flutter-1-1.png'),
                ),
                title: Text(
                  "Flutter",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut lab ore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.speaker_notes),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0, left: 40.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.repeat),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.favorite_border),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.call_split),
                  color: Colors.white,
                  padding: new EdgeInsets.all(0.0),
                  onPressed: () {},
                ),
              ],
            ),
            new Divider(
              color: Colors.black45,
            ),
            new Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1111678689228582913/t2k7QK3r_400x400.png'),
                ),
                title: Text(
                  "GDG",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consecing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.speaker_notes),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0, left: 40.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.repeat),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.favorite_border),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.call_split),
                  color: Colors.white,
                  padding: new EdgeInsets.all(0.0),
                  onPressed: () {},
                ),
              ],
            ),
            new Divider(
              color: Colors.black45,
            ),
            new Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1093585928642162688/oVdX1KD-_400x400.jpg'),
                ),
                title: Text(
                  "Women Techmakers",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Lorem ipsum , consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.speaker_notes),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0, left: 40.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.repeat),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.favorite_border),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.call_split),
                  color: Colors.white,
                  padding: new EdgeInsets.all(0.0),
                  onPressed: () {},
                ),
              ],
            ),
            new Divider(),
            new Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/2899657035/9c362f3925b029b91676cca2cfef3e5e_400x400.png'),
                ),
                title: Text(
                  "GDG Eskişehir",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.speaker_notes),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0, left: 40.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.repeat),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.favorite_border),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.call_split),
                  color: Colors.white,
                  padding: new EdgeInsets.all(0.0),
                  onPressed: () {},
                ),
              ],
            ),
            new Divider(),
            new Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/974775178587791361/meejaGSe_400x400.jpg'),
                ),
                title: Text(
                  "Merve Arslan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.speaker_notes),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0, left: 40.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.repeat),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.favorite_border),
                  color: Colors.white,
                  padding: new EdgeInsets.only(right: 50.0),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: new Icon(Icons.call_split),
                  color: Colors.white,
                  padding: new EdgeInsets.all(0.0),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}
