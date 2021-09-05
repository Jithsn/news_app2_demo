import 'package:flutter/material.dart';
import 'package:leventh/layout.dart';
import 'package:leventh/mainnews.dart';
import 'package:leventh/news_details.dart';

class NewCard extends StatefulWidget {
  const NewCard({Key key}) : super(key: key);

  @override
  _NewCardState createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Second(
                                  index: index,
                                )));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 250,
                            width: 500,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(mov[index].image),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16))),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              padding: EdgeInsets.all(12),
                              margin: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                mov[index].name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                mov[index].name1,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Layout.iconText(
                                      Icon(Icons.timer),
                                      Text(
                                        mov[index].date,
                                        style: TextStyle(fontSize: 14),
                                      )),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Icon(Icons.favorite_border),
                                  )
                                ],
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          );
        },
        itemCount: mov.length,
      ),
    );
  }
}
