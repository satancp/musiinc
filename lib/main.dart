import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musiinc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Musiinc'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _counter = 0;
  TabController _tabController;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    this._tabController = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    this._tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_bag_sharp,
                color: Colors.white,
              ),
            ),
            SizedBox(), // 增加一些间隔
            IconButton(
              icon: Icon(
                Icons.message_sharp,
                color: Colors.white,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.account_circle_sharp,
                color: Colors.white,
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
        shape: CircularNotchedRectangle(),
      ),
      body: SafeArea(
          child: Column(children: [
        Row(
          children: [
            Expanded(
              flex: 10,
              child: Container(
                  height: 40,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(242, 242, 242, 1),
                    border: Border.all(color: Colors.transparent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  child: TextField(
                      style: TextStyle(fontSize: 12.0),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(12, 4, 12, 0),
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.mic_sharp),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "周杰伦的新歌"))),
            ),
          ],
        ),
        Align(
          child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(text: '关注'),
                    Tab(text: '精选'),
                    Tab(text: '圈子'),
                    Tab(text: '本地'),
                  ],
                  controller: _tabController,
                  labelColor: Colors.blue,
                  labelStyle:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: TextStyle(fontSize: 12.0))),
          alignment: Alignment.centerLeft,
        ),
        Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                verticalDirection: VerticalDirection.up,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      width: 40,
                      child: Icon(
                        Icons.account_circle_rounded,
                        size: 40,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '海绵宝宝',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '25分钟前',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '派大星今天跟我说要去抓水母，可是章鱼哥非要让我去找蟹老板',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Wrap(
                            children: [
                              Image.network(
                                "https://www.bibgame.com/d/file/p/2020/03-18/90a55c7e8b28c2b169baa63745cd1741.gif",
                                width: 80,
                                height: 80,
                              ),
                              Image.network(
                                "https://www.bibgame.com/d/file/p/2020/03-18/90a55c7e8b28c2b169baa63745cd1741.gif",
                                width: 80,
                                height: 80,
                              ),
                              Image.network(
                                "https://www.bibgame.com/d/file/p/2020/03-18/90a55c7e8b28c2b169baa63745cd1741.gif",
                                width: 80,
                                height: 80,
                              ),
                              Image.network(
                                "https://www.bibgame.com/d/file/p/2020/03-18/90a55c7e8b28c2b169baa63745cd1741.gif",
                                width: 80,
                                height: 80,
                              ),
                              Image.network(
                                "https://www.bibgame.com/d/file/p/2020/03-18/90a55c7e8b28c2b169baa63745cd1741.gif",
                                width: 80,
                                height: 80,
                              )
                            ],
                            runSpacing: 5.0,
                            spacing: 5.0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on,
                                  color: Colors.blue, size: 14),
                              Text("比基尼海滩",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 14))
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            verticalDirection: VerticalDirection.up,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.share_sharp,
                                  color: Colors.grey, size: 16),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.chat,
                                          color: Colors.grey, size: 16),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text("276",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14))
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.favorite_border_sharp,
                                          color: Colors.grey, size: 16),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text("23k",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14))
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width - 50)
                ],
              ),
            )
          ],
        )
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.create_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
