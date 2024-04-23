import 'package:flutter/material.dart';
import 'package:resume_builder/utils/Appbar.dart';
import 'package:resume_builder/utils/Colours.dart';
import 'package:resume_builder/utils/Fonts_Style.dart';

import '../utils/PAGE_DATA.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isClick = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar.homePageAppBar(
          title: "Resume Builder", context: context, subtitle: "RESUMES"),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isClick = true;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 73,
                          width: MediaQuery.of(context).size.width / 2.28,
                          child: Text(
                            "My Resumes",
                            style: TextStyle(
                              color: (isClick == true)
                                  ? whitetitlecolor
                                  : maincolorofapp,
                              fontSize: 25,
                            ),
                          ),
                          decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(3, 3))
                            ],
                            borderRadius: BorderRadius.circular(9),
                            color: (isClick == true)
                                ? maincolorofapp
                                : whitetitlecolor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isClick = false;

                            showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Resume Name"),
                                    content: Expanded(
                                      child: TextField(
                                        onChanged: (val) {
                                          Things.ResumeName = val;
                                        },
                                        decoration: InputDecoration(
                                          hintText: "Enter Resume Name",
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    actions: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          Navigator.of(context).pop('homepage');
                                        },
                                        child: Icon(Icons.close),
                                        mini: true,
                                        elevation: 3,
                                      ),
                                      FloatingActionButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed('workspace');
                                        },
                                        child: Icon(Icons.done),
                                        mini: true,
                                        elevation: 3,
                                      ),
                                    ],
                                  );
                                });
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 15),
                          height: 73,
                          width: MediaQuery.of(context).size.width / 2.28,
                          child: Text(
                            "Creat New",
                            style: TextStyle(
                              color: (isClick == false)
                                  ? whitetitlecolor
                                  : maincolorofapp,
                              fontSize: 25,
                            ),
                          ),
                          decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                  offset: Offset(3, 3))
                            ],
                            borderRadius: BorderRadius.circular(9),
                            color: (isClick == false)
                                ? maincolorofapp
                                : whitetitlecolor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                (isClick == true)
                    ? (Things.allResume.isEmpty)
                        ? Column(
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Image.asset(
                                "assets/Icons/open-cardboard-box.png",
                                height: 60,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "No Resume + Create new resume.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: maincolorofapp,
                                ),
                              ),
                            ],
                          )
                        : Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                ...Things.allResume.map(
                                  (e) => GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed('pdf_view');
                                    },
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20, left: 20, right: 20),
                                          child: Container(
                                            height: 100,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                              gradient: LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Color(0xff7CC2C5),
                                                  Color(0xff33A0A4),
                                                  Color(0xff61B5B9),
                                                  Color(0xff54AFB3),
                                                  Color(0xff2C9CA1),
                                                ],
                                              ),
                                            ),
                                            padding: EdgeInsets.only(
                                              right: 18,
                                            ),
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              e.ResumeName,
                                              style: font.subTitleStyle,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
