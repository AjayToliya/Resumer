import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import '../utils/Appbar.dart';
import '../utils/PAGE_DATA.dart';
import '../utils/colours.dart';

class Education_Page extends StatefulWidget {
  const Education_Page({super.key});

  @override
  State<Education_Page> createState() => _Education_PageState();
}

class _Education_PageState extends State<Education_Page> {
  GlobalKey<FormState> educationKey = GlobalKey<FormState>();
  TextEditingController courseController = TextEditingController();
  TextEditingController school1Controller = TextEditingController();
  TextEditingController school2Controller = TextEditingController();
  TextEditingController yearController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar.allAppBar(
        title: "Education",
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
                height: MediaQuery.of(context).size.height / 1.49,
                borderRadius: 20,
                blur: 20,
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
                child: Container(
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  height: MediaQuery.of(context).size.height / 1.25,
                  child: Form(
                    key: educationKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Course/Degree",
                                    style: TextStyle(
                                      color: whitetitlecolor,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter course/degree.";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Things.course = val ?? "";
                                      },
                                      controller: courseController,
                                      decoration: InputDecoration(
                                        label: Text(
                                          "course/degree",
                                          style:
                                              TextStyle(color: whitetitlecolor),
                                        ),
                                        border: OutlineInputBorder(),
                                        hintText:
                                            "B .Tech Information Technology",
                                        hintStyle:
                                            TextStyle(color: whitetitlecolor),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "School/College/Institute",
                                    style: TextStyle(
                                      color: whitetitlecolor,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter school/college/institute.";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Things.school1 = val ?? "";
                                      },
                                      controller: school1Controller,
                                      decoration: InputDecoration(
                                        label: Text(
                                          "school/college/institute",
                                          style:
                                              TextStyle(color: whitetitlecolor),
                                        ),
                                        border: OutlineInputBorder(),
                                        hintText: "Bhagvan mahavir Univercity",
                                        hintStyle:
                                            TextStyle(color: whitetitlecolor),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Percentage Or CGPA",
                                    style: TextStyle(
                                      color: whitetitlecolor,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter school/college/institute.";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Things.school2 = val ?? "";
                                      },
                                      controller: school2Controller,
                                      decoration: InputDecoration(
                                        label: Text(
                                          "70% (or) 70 CGPA",
                                          style:
                                              TextStyle(color: whitetitlecolor),
                                        ),
                                        border: OutlineInputBorder(),
                                        hintText: "70% (or) 70 CGPA",
                                        hintStyle:
                                            TextStyle(color: whitetitlecolor),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Year Of Pass",
                                    style: TextStyle(
                                      color: whitetitlecolor,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter organization/institute.";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Things.year = val ?? "";
                                      },
                                      controller: yearController,
                                      decoration: InputDecoration(
                                        label: Text(
                                          "passing year",
                                          style:
                                              TextStyle(color: whitetitlecolor),
                                        ),
                                        border: OutlineInputBorder(),
                                        hintText: "2019",
                                        hintStyle:
                                            TextStyle(color: whitetitlecolor),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                if (educationKey.currentState!.validate()) {
                                  educationKey.currentState!.save();

                                  courseController.clear();
                                  school1Controller.clear();
                                  school2Controller.clear();
                                  yearController.clear();
                                }
                              },
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 15),
                                backgroundColor:
                                    maincolorofapp.withOpacity(0.7),
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
                                if (educationKey.currentState!.validate()) {
                                  educationKey.currentState!.save();
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
                                  courseController.clear();
                                  school1Controller.clear();
                                  school2Controller.clear();
                                  yearController.clear();
                                }
                              },
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 15),
                                backgroundColor: maincolorofapp,
                              ),
                              child: Text(
                                "Save",
                                style: TextStyle(
                                    fontSize: 17, color: whitetitlecolor),
                              ),
                            ),
                          ],
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
