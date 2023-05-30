import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../color/colors.dart' as color;

class Favrite extends StatefulWidget {
  const Favrite({super.key});

  @override
  State<Favrite> createState() => _FavriteState();
}

class _FavriteState extends State<Favrite> {
  List info = [];

  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "Virtual Home",
            style: TextStyle(color: Colors.white),
          ),
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.add,
                  size: 26.0,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.AppColor.gradientFirst.withOpacity(0.8),
              color.AppColor.gradientSecond.withOpacity(0.9),
            ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
          ),
          child: Container(
            padding: EdgeInsets.only(right: 10, left: 10, top: 30),
            margin: EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 15,
                      height: MediaQuery.of(context).size.width / 2 - 60,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              color.AppColor.gradientboxFirst.withOpacity(0.6),
                              color.AppColor.gradientboxFirst.withOpacity(0.7),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(5, 10),
                                blurRadius: 10,
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.2)),
                          ]),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: EdgeInsets.only(
                            left: 20, right: 20, bottom: 20, top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 8,
                              height: MediaQuery.of(context).size.width / 8,
                              margin: EdgeInsets.only(bottom: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.battery_1_bar_sharp,
                                color: Colors.black,
                                size: MediaQuery.of(context).size.width / 10,
                              ),
                            ),
                            Text(
                              "1 hr 5 mins left on Kitchen Dishwasher",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 10 - 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 15,
                      height: MediaQuery.of(context).size.width / 2 - 60,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              color.AppColor.gradientboxFirst.withOpacity(0.6),
                              color.AppColor.gradientboxFirst.withOpacity(0.7),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(5, 10),
                                blurRadius: 10,
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.2)),
                          ]),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: EdgeInsets.only(
                            left: 20, right: 20, bottom: 20, top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 8,
                              height: MediaQuery.of(context).size.width / 8,
                              margin: EdgeInsets.only(bottom: 15),
                              decoration: BoxDecoration(
                                  color: Colors.amber[600],
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.battery_1_bar_sharp,
                                color: Colors.white,
                                size: MediaQuery.of(context).size.width / 10,
                              ),
                            ),
                            Text(
                              "Low battery on Bedroom Curtain",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 10 - 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                //--------------------------------------- Section 2-----------------
                Expanded(
                  child: OverflowBox(
                    maxWidth: MediaQuery.of(context).size.width - 15,
                    child: ListView.builder(
                      itemCount: (info.length.toDouble() / 2).toInt(),
                      itemBuilder: (_, i) {
                        int a = 2 * i;
                        int b = 2 * i + 1;
                        return Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2 - 20,
                              height: 75,
                              margin:
                                  EdgeInsets.only(left: 5, bottom: 10, top: 5),
                              padding: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 6.9,
                                    height: 80,
                                    margin: EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: AssetImage(info[1]['img']),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                5.9,
                                        child: Text(
                                          info[a]['title'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 10,
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      color: Color.fromARGB(255, 236, 236, 236),
                                    ),
                                    child: Icon(
                                      Icons.play_arrow,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2 - 20,
                              height: 75,
                              margin:
                                  EdgeInsets.only(left: 5, bottom: 10, top: 0),
                              padding: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 6.9,
                                    height: 80,
                                    margin: EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: AssetImage(info[b]['img']))),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                5.9,
                                        child: Text(
                                          info[b]['title'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 10,
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      color: Color.fromARGB(255, 236, 236, 236),
                                    ),
                                    child: Icon(
                                      Icons.play_arrow,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 75,
                  margin: EdgeInsets.only(left: 5, bottom: 10, top: 0),
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 6.9,
                        height: 80,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('assets/good.png'),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 5.9,
                            child: Text(
                              "Text",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.width / 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Color.fromARGB(255, 236, 236, 236),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // ---------------------------------------- Section 3
          ),
        ),
      ),
    );
  }
}
