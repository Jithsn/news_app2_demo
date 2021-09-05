import 'package:flutter/material.dart';
import 'package:leventh/news_card.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> tabs = [
    tab("Technology"),
    tab("Buziness"),
    tab("Entertainmnt"),
    tab("Health"),
    tab("Spotrs"),
    tab("Movies")
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "News EveryWhere",
            style: TextStyle(color: Color(0xFFECEFF1), fontSize: 20),
          ),
          elevation: 0,
          bottom: TabBar(
            tabs: tabs,
            isScrollable: true,
            indicatorColor: Colors.pink,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.amber,
            indicatorSize: TabBarIndicatorSize.label,
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.notifications,
              color: Colors.black,
            )
          ],
        ),
        body: TabBarView(children: tabs.map((model) => NewCard()).toList()),
      ),
    );
  }
}

Widget tab(String tabname) {
  return Tab(text: tabname);
}
