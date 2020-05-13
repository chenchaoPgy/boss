import 'package:flutter/material.dart';
import '../app/component/icon_tab.dart';

class HomeState extends StatefulWidget {
  @override
  _HomeStateState createState() => _HomeStateState();
}

double _kTabTextSize = 11.0;
int INDEX_JOB = 0;
int INDEX_COMPANY = 1;
int INDEX_MESSAGE = 2;
int INDEX_MINE = 3;
Color _kPrimaryColor = new Color.fromARGB(255, 0, 215, 198);

class _HomeStateState extends State<HomeState>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  TabController _controller;
  VoidCallback onChange;

  @override
  void initState() {
    super.initState();
    _controller =
        new TabController(initialIndex: _currentIndex, length: 4, vsync: this);
    _controller.addListener(onChange);
    onChange = () {
      _currentIndex = this._currentIndex;
    };
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 50,
          decoration: BoxDecoration(color: Colors.white),
          child: TabBar(
              indicatorWeight: 0.5,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.blue,
              labelStyle: TextStyle(fontSize: 10, height: 0),
              onTap: (int pos) {
                setState(() {
                  _currentIndex = pos;
                });
              },
              tabs: <Widget>[
                Tab(
                  icon: _currentIndex == 0
                      ? Image.asset(
                          'assets/images/one_select_tab.png',
                          width: 25,
                          height: 25,
                        )
                      : Image.asset(
                          'assets/images/one_unselect_tab.png',
                          width: 25,
                          height: 25,
                        ),
                  text: '职位',
                ),
                Tab(
                  icon: _currentIndex == 1
                      ? Image.asset(
                          'assets/images/two_select_tab.png',
                          width: 25,
                          height: 25,
                        )
                      : Image.asset(
                          'assets/images/two_unselect_tab.png',
                          width: 25,
                          height: 25,
                        ),
                  text: '公司',
                ),
                Tab(
                  icon: _currentIndex == 2
                      ? Image.asset(
                          'assets/images/five_select_tab.png',
                          width: 25,
                          height: 25,
                        )
                      : Image.asset(
                          'assets/images/five_unselect_tab.png',
                          width: 25,
                          height: 25,
                        ),
                  text: '消息',
                ),
                Tab(
                  icon: _currentIndex == 3
                      ? Image.asset(
                          'assets/images/assets_detail_coin_coin_trade_selected.png',
                          width: 25,
                          height: 25,
                        )
                      : Image.asset(
                          'assets/images/assets_detail_coin_coin_trade_unselected.png',
                          width: 25,
                          height: 25,
                        ),
                  text: '我的',
                ),
              ]),
        ),
      ),
    );
  }
}



//return DefaultTabController(
//length: 4,
//child: Scaffold(
//bottomNavigationBar: Container(
//height: 50,
//decoration: BoxDecoration(color: Colors.white),
//child: TabBar(
//indicatorWeight: 0.5,
//indicatorSize: TabBarIndicatorSize.label,
//indicatorColor: Colors.blue,
//labelStyle: TextStyle(fontSize: 10, height: 0),
//onTap: (int pos) {
//setState(() {
//_currentIndex = pos;
//});
//},
//tabs: <Widget>[
//Tab(
//icon: _currentIndex == 0
//? Image.asset(
//'assets/images/one_select_tab.png',
//width: 25,
//height: 25,
//)
//: Image.asset(
//'assets/images/one_unselect_tab.png',
//width: 25,
//height: 25,
//),
//text: '职位',
//),
//Tab(
//icon: _currentIndex == 1
//? Image.asset(
//'assets/images/two_select_tab.png',
//width: 25,
//height: 25,
//)
//: Image.asset(
//'assets/images/two_unselect_tab.png',
//width: 25,
//height: 25,
//),
//text: '公司',
//),
//Tab(
//icon: _currentIndex == 2
//? Image.asset(
//'assets/images/five_select_tab.png',
//width: 25,
//height: 25,
//)
//: Image.asset(
//'assets/images/five_unselect_tab.png',
//width: 25,
//height: 25,
//),
//text: '消息',
//),
//Tab(
//icon: _currentIndex == 3
//? Image.asset(
//'assets/images/assets_detail_coin_coin_trade_selected.png',
//width: 25,
//height: 25,
//)
//: Image.asset(
//'assets/images/assets_detail_coin_coin_trade_unselected.png',
//width: 25,
//height: 25,
//),
//text: '我的',
//),
//]),
//),
//),
//);