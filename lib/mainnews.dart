import 'package:flutter/material.dart';

class MainNews {
  String name;
  String name1;
  String image;
  String date;
  MainNews({this.name, this.name1, this.image, this.date});
}

List<MainNews> mov = [
  MainNews(
      name: "Technology",
      name1: "First News",
      image: "images/1.jpg",
      date: "04-10-2021"),
  MainNews(
      name: "Sports",
      name1: "Second News",
      image: "images/2.jpg",
      date: "03-03-2021"),
  MainNews(
      name: "Buzines",
      name1: "Third News",
      image: "images/3.jpg",
      date: "08-10-2021"),
  MainNews(
      name: "Health",
      name1: "Fourth News",
      image: "images/4.jpg",
      date: "19-04-2021"),
  MainNews(
      name: "Movie ",
      name1: "Fifth News",
      image: "images/5.jpg",
      date: "30-10-2021"),
];
