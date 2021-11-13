import 'package:flutter/material.dart';
import 'package:twitter/page/home.dart';
import 'package:twitter/page/message.dart';
import 'package:twitter/page/notifications.dart';
import 'package:twitter/page/search.dart';

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => new MyHomeState();
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();

    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Twitter Clone"),
        leading: CircleAvatar(
          radius: 20.0,
          child: ClipOval(
            child: new SizedBox(
              width: 40.0,
              height: 40.0,
              child: new Image.network("https://pbs.twimg.com/profile_images/974775178587791361/meejaGSe_400x400.jpg"),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColorDark,
          child: ListView(
            children: <Widget>[
              new Container(
                child: new UserAccountsDrawerHeader(
                  accountName: Text(
                    "Merve Arslan",
                    style: new TextStyle(fontSize: 15.0),
                  ),
                  accountEmail: Text(
                    "arslannmrv@gmail.com",
                    style: new TextStyle(fontSize: 15.0),
                  ),
                  currentAccountPicture: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://pbs.twimg.com/profile_images/974775178587791361/meejaGSe_400x400.jpg"),
                      ),
                    ),
                  ),
                ),
              ),
              new Container(
                child: new ListTile(
                  title: Text(
                    "Profile",
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  leading: Icon(Icons.person),
                ),
              ),
              new Divider(
                height: 5.0,
                color: Colors.black45,
              ),
              new Container(
                child: new ListTile(
                  title: Text(
                    "Lists",
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  leading: Icon(Icons.list),
                ),
              ),
              new Divider(
                height: 5.0,
                color: Colors.black45,
              ),
              new Container(
                child: new ListTile(
                  title: Text(
                    "Place Marks",
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  leading: Icon(Icons.bookmark_border),
                ),
              ),
              new Divider(
                height: 5.0,
                color: Colors.black45,
              ),
              new Container(
                child: new ListTile(
                  title: new Text(
                    "Moments",
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  leading: Icon(Icons.flash_on),
                ),
              ),
              new Divider(
                height: 2.0,
              ),
            ],
          ),
        ),
      ),
      body: new TabBarView(
        children: <Widget>[
          new Home(),
          new Search(),
          new Notificationn(),
          new Message()
        ],
        controller: controller,
      ),
      bottomNavigationBar: new Material(
        shadowColor: Colors.white,
        color: Theme.of(context).primaryColorDark,
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              icon: new Icon(
                Icons.home,
                size: 30.0,
              ),
            ),
            new Tab(
              icon: new Icon(
                Icons.search,
                size: 30.0,
              ),
            ),
            new Tab(
              icon: new Icon(
                Icons.notifications,
                size: 30.0,
              ),
            ),
            new Tab(
              icon: new Icon(
                Icons.message,
                size: 30.0,
              ),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
