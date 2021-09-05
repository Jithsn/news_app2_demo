import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:leventh/layout.dart';

class Second extends StatefulWidget {
  int index;

  Second({Key key, this.index}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage(mov1[widget.index].image),
                fit: BoxFit.fill,
              ),
            ),
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            expandedHeight: 250,
          ),
          SliverFillRemaining(
            child: newsDetails(widget.index),
          )
        ],
      ),
    );
  }
}

Widget newsDetails(int i) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        row1(i),
        Layout.iconText(Icon(Icons.timer), Text(mov1[i].date)),
        SizedBox(
          height: 10,
        ),
        Text(
          mov1[i].name,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          child: Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          width: 100,
        ),
        Expanded(
            child: Container(
          child: Column(
            children: [
              Text(
                mov1[i].data,
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                mov1[i].data,
              ),
            ],
          ),
        )),
      ],
    ),
  );
}

Widget row1(int i) {
  return Container(
    padding: EdgeInsets.all(12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              mov1[i].name1,
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Feather.moon)),
              IconButton(onPressed: () {}, icon: Icon(Feather.bookmark))
            ],
          ),
        ),
      ],
    ),
  );
}

class MainNew {
  String name;
  String name1;
  String image;
  String data;
  String data1;
  String date;
  MainNew(
      {this.name, this.name1, this.image, this.data, this.data1, this.date});
}

List<MainNew> mov1 = [
  MainNew(
      name: "First News",
      date: "04-10-2021",
      name1: "Techy",
      data: "First News",
      data1: "Descrption",
      image: "images/1.jpg"),
  MainNew(
      name: "Second News",
      date: "03-03-2021",
      name1: "Sports",
      data: "First News",
      data1: "Descrption",
      image: "images/2.jpg"),
  MainNew(
      name: "Third News",
      date: "08-10-2021",
      name1: "Buziness",
      data: "First News",
      data1: "Descrption",
      image: "images/3.jpg"),
  MainNew(
      name: "Fourth News",
      date: "19-04-2021",
      name1: "Health",
      data: "First News",
      data1: "Descrption",
      image: "images/4.jpg"),
  MainNew(
      name: "Fifth News",
      date: "30-10-2021",
      name1: "Movie",
      data: "First News",
      data1: "Descrption",
      image: "images/5.jpg")
];
