import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:resume_builder/utils/Appbar.dart';
import '../utils/PAGE_DATA.dart';
import '../utils/colours.dart';

class Technical_Page extends StatefulWidget {
  const Technical_Page({super.key});

  @override
  State<Technical_Page> createState() => _Technical_PageState();
}

class _Technical_PageState extends State<Technical_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar.allAppBar(
        title: "Technical Skills",
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
              height: MediaQuery.of(context).size.height / 2.5,
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
              child: Padding(
                padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
                child: Column(
                  children: [
                    Text(
                      "Enter your Skills",
                      style: TextStyle(
                          fontSize: 25,
                          color: whitetitlecolor,
                          fontWeight: FontWeight.w500),
                    ),
                    ...Things.allSkill.map(
                      (e) => Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: e,
                              decoration: InputDecoration(
                                  hintText: "C Programming, Web Technical",
                                  hintStyle: TextStyle(
                                      color: whitetitlecolor, fontSize: 20)),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                Things.allSkill.remove(e);
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
                    Padding(
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      child: SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: whitetitlecolor,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 15),
                            foregroundColor: maincolorofapp,
                          ),
                          onPressed: () {
                            setState(() {
                              Things.allSkill.add(TextEditingController());
                            });
                          },
                          child: Icon(
                            Icons.add,
                            size: 40,
                            color: whitetitlecolor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                Things.allSkill.forEach((element) {
                                  element.clear();
                                });
                                setState(() {
                                  Things.allSkill = [
                                    TextEditingController(),
                                    TextEditingController(),
                                  ];
                                });
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: whitetitlecolor,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15),
                              foregroundColor: maincolorofapp,
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
                                Things.allSkill.forEach((element) {
                                  Things.skillData.add(element.text);
                                });
                                Things.allSkill.forEach((element) {
                                  element.clear();
                                });
                                setState(() {
                                  Things.allSkill = [
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
                                                "workspace", (route) => false);
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
          ],
        ),
      ),
    );
  }
}
