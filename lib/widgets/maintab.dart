// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:badges/badges.dart' as badges;
import 'package:facebook_ui/pages/friends_page.dart';
import 'package:facebook_ui/pages/home_page.dart';
import 'package:facebook_ui/pages/market_page.dart';
import 'package:facebook_ui/pages/message_page.dart';
import 'package:facebook_ui/pages/notification_page.dart';
import 'package:facebook_ui/pages/video_page.dart';
import 'package:facebook_ui/widgets/home/homedrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainTab extends StatefulWidget {
  MainTab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    const Tab(icon: Icon(Icons.home_outlined)),
    const Tab(icon: Icon(Icons.people_outlined)),
    const Tab(icon: Icon(Icons.message_outlined)),
    Tab(
      icon: badges.Badge(
        position: badges.BadgePosition.topEnd(top: -10, end: -5),
        badgeContent: Text(
          '3',
          style: TextStyle(color: Colors.white),
        ),
        child: const Icon(Icons.notifications_outlined),
      ),
    ),
    Tab(icon: Icon(Icons.video_collection_outlined)),
    Tab(icon: Icon(Icons.shopping_bag_outlined)),
  ];
  @override
  void initState() {
    _tabController =
        TabController(length: topTabs.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });
    super.initState();
  }

  Future<bool> _onWillPop() async {
    print("on will pop");
    if (_tabController?.index == 0) {
      await SystemNavigator.pop();
    }
    Future.delayed(Duration(milliseconds: 200), () {
      print('Set Index');
      _tabController?.index = 0;
    });

    print("Return");
    return _tabController?.index == 0;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(
            'Facebook',
            style: TextStyle(
                fontFamily: 'Klavika',
                fontSize: 34,
                color: Color.fromARGB(255, 5, 94, 183)),
          ),
          actions: [
            Container(
              child: IconButton(
                icon: Icon(Icons.search, color: Colors.black),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  print('Search Button Clicked');
                },
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                icon: const Icon(Icons.menu, color: Colors.black),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: topTabs,
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          child: MyDrawer(),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            HomePage(),
            FriendsPage(),
            MessagePage(),
            NotificationPage(),
            VideoPage(),
            MarketPage(),
          ],
        ),
      ),
    );
  }
}
