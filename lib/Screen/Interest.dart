import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:resume_builder/utils/Appbar.dart';
import '../utils/PAGE_DATA.dart';
import '../utils/colours.dart';

class Interest_Page extends StatefulWidget {
  const Interest_Page({super.key});

  @override
  State<Interest_Page> createState() => _Interest_PageState();
}

class _Interest_PageState extends State<Interest_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar.allAppBar(
        title: "Interest",
        context: context,
        subtitle: " ",
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: maincolorofapp,
        child: Column(
          children: [
            GlassmorphicContainer(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 2.1,
              borderRadius: 20,
              blur: 20,
              alignment: Alignment.bottomCenter,
              border: 2,
              linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.1),
                    Color(0xFFFFFFFF).withOpacity(0.05),
                  ],
                  stops: [
                    0.1,
                    1,
                  ]),
              borderGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFffffff).withOpacity(0.5),
                  Color((0xFFFFFFFF)).withOpacity(0.5),
                ],
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Enter your Hobbies",
                          style: TextStyle(
                              fontSize: 25,
                              color: whitetitlecolor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...Things.allHobbies.map(
                        (e) => Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: e,
                                decoration: InputDecoration(
                                    hintText: "C Programming, Web Technical",
                                    hintStyle: TextStyle(
                                        color: gerysubtitlecolor,
                                        fontSize: 20)),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  Things.allHobbies.remove(e);
                                });
                              },
                              icon: Icon(
                                Icons.delete,
                                size: 30,
                                color: whitetitlecolor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: maincolorofapp,
                            side: BorderSide(
                              color: whitetitlecolor,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              Things.allHobbies.add(TextEditingController());
                            });
                          },
                          child: Icon(
                            Icons.add,
                            size: 40,
                            color: gerysubtitlecolor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  Things.allHobbies.forEach((element) {
                                    element.clear();
                                  });
                                  setState(() {
                                    Things.allHobbies = [
                                      TextEditingController(),
                                      TextEditingController(),
                                    ];
                                  });
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 15),
                                foregroundColor: maincolorofapp,
                                side: BorderSide(
                                  color: whitetitlecolor,
                                ),
                              ),
                              child: Text(
                                "Clear",
                                style: TextStyle(
                                    fontSize: 17, color: whitetitlecolor),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Things.allHobbies.forEach((element) {
                                    Things.hobbyData.add(element.text);
                                  });
                                  Things.allHobbies.forEach((element) {
                                    element.clear();
                                  });
                                  setState(() {
                                    Things.allHobbies = [
                                      TextEditingController(),
                                      TextEditingController(),
                                    ];
                                  });
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor:
                                        maincolorofapp.withOpacity(0.5),
                                    action: SnackBarAction(
                                      label: "Next",
                                      onPressed: () {
                                        setState(() {
                                          Navigator.of(context)
                                              .pushNamedAndRemoveUntil(
                                                  "workspace",
                                                  (route) => false);
                                        });
                                      },
                                      textColor: whitetitlecolor,
                                    ),
                                    content: Text(
                                      "Technical skills information Saved SuccessFully!!!",
                                    ),
                                  ),
                                );
                              },
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 15),
                                foregroundColor: whitetitlecolor,
                                backgroundColor: maincolorofapp,
                              ),
                              child: Text(
                                "Save",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
