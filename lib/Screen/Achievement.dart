import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:resume_builder/utils/Appbar.dart';
import '../utils/colours.dart';

class Achievement_Page extends StatefulWidget {
  const Achievement_Page({super.key});

  @override
  State<Achievement_Page> createState() => _Achievement_PageState();
}

class _Achievement_PageState extends State<Achievement_Page> {
  List<String> achievements = ["", ""];
  List<TextEditingController> textControllers = [
    TextEditingController(),
    TextEditingController(),
  ];

  @override
  void clearTextFields() {
    for (var controller in textControllers) {
      controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar.allAppBar(
        title: "Achievement",
        context: context,
        subtitle: " ",
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: maincolorofapp,
        child: SingleChildScrollView(
          child: Column(
            children: [
              GlassmorphicContainer(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 2,
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
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Enter Achievement",
                          style: TextStyle(
                              fontSize: 25,
                              color: whitetitlecolor,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ...List.generate(
                          achievements.length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: textControllers[index],
                                    onChanged: (text) {
                                      setState(() {
                                        achievements[index] = text;
                                      });
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Exceeded sales 17% average",
                                        hintStyle: TextStyle(
                                            color: gerysubtitlecolor,
                                            fontSize: 20)),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      achievements.removeAt(index);
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
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          child: SizedBox(
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
                                  achievements.add("");
                                  textControllers.add(TextEditingController());
                                });
                              },
                              child: Icon(
                                Icons.add,
                                size: 40,
                                color: gerysubtitlecolor,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    clearTextFields(); // Clear all text fields
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
                                  // Save functionality
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: maincolorofapp,
                                      action: SnackBarAction(
                                        label: "Next",
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamedAndRemoveUntil(
                                                  "workspace",
                                                  (route) => false);
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
      ),
    );
  }
}
