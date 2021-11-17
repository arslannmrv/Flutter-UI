import 'package:flutter/material.dart';
import 'package:twitter/constants.dart';
import 'package:twitter/models/twitter.dart';
import 'package:twitter/page/home.dart';
import 'package:twitter/page/message.dart';
import 'package:twitter/page/notifications.dart';
import 'package:twitter/page/search.dart';

class CommonPage extends StatefulWidget {
  @override
  CommonPageState createState() => new CommonPageState();
}

class CommonPageState extends State<CommonPage>
    with SingleTickerProviderStateMixin {
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
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      appBar: AppBar(
        title: Text(Constants.app_name),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                NetworkImage(TwitterData.fetchAll()[0].profileImage),
          ),

          ///actions: [IconButton(onPressed: () {}, icon: Icon(Icons.wifi_off_sharp))],
        ),
      ),
      drawer: _buildDrawerWidget(context),
      body: _buildTabBarViewWidget(
        controller,
      ),
      floatingActionButton: _buildFloatinActionButton(context),
      bottomNavigationBar: _buildBottomTabBar(controller),
    );
  }
}

Widget _buildDrawerWidget(context) {
  String _email = "arslannmrv@gmail.com";
  return Drawer(
    child: Container(
        color: Theme.of(context).primaryColorDark,
        child: _buildDrawerListItem(_email)),
  );
}

Widget _buildDrawerListItem(_email) {
  return ListView(
    children: <Widget>[
      new Container(
        child: new UserAccountsDrawerHeader(
          accountName: Text(
            TwitterData.fetchAll()[0].name,
            style: TextStyle(fontSize: 15),
          ),
          accountEmail: Text(
            _email,
            style: TextStyle(fontSize: 15),
          ),
          currentAccountPicture: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(TwitterData.fetchAll()[0].profileImage),
              ),
            ),
          ),
        ),
      ),
      new Container(
        child: new ListTile(
          title: Text(
            "Profile",
            style: new TextStyle(fontSize: 18, color: Colors.white),
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
            style: new TextStyle(fontSize: 18, color: Colors.white),
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
            style: new TextStyle(fontSize: 18, color: Colors.white),
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
            style: new TextStyle(fontSize: 18, color: Colors.white),
          ),
          leading: Icon(Icons.flash_on),
        ),
      ),
      new Divider(
        height: 2,
      ),
    ],
  );
}

Widget _buildTabBarViewWidget(controller) {
  return TabBarView(
    children: <Widget>[
      Home(),
      Search(),
      Notificationn(),
      Message(),
    ],
    controller: controller,
  );
}

Widget _buildBottomTabBar(controller) {
  return TabBar(
    tabs: <Tab>[
      Tab(
        icon: Icon(
          Icons.home,
          size: 24,
        ),
      ),
      Tab(
        icon: new Icon(
          Icons.search,
          size: 24,
        ),
      ),
      Tab(
        icon: new Icon(
          Icons.notifications,
          size: 24,
        ),
      ),
      new Tab(
        icon: new Icon(
          Icons.email,
          size: 24,
        ),
      ),
    ],
    controller: controller,
  );
}

Widget _buildFloatinActionButton(context) {
  return FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    backgroundColor: Theme.of(context).colorScheme.secondary,
  );
}
