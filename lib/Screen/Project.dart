import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:resume_builder/utils/Appbar.dart';
import '../utils/colours.dart';
import 'package:resume_builder/utils/Fonts_Style.dart';
import 'package:resume_builder/utils/PAGE_DATA.dart';

class Project_Page extends StatefulWidget {
  const Project_Page({super.key});

  @override
  State<Project_Page> createState() => _Project_PageState();
}

class _Project_PageState extends State<Project_Page> {
  GlobalKey<FormState> projectKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController rolesController = TextEditingController();
  TextEditingController techController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  bool c_language = false;
  bool c_plus = false;
  bool flutter = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar.allAppBar(
        title: "Project",
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
                height: MediaQuery.of(context).size.height / 1.2,
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
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, top: 15),
                    child: Form(
                      key: projectKey,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Project Title",
                                      style: font.subTitleStyle,
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
                                          Things.project_title = val ?? "";
                                        },
                                        controller: titleController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "Resume Builder App",
                                          hintStyle: TextStyle(
                                            color: gerysubtitlecolor,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Technologies",
                                style: font.subTitleStyle,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: c_language,
                                  activeColor: whitetitlecolor,
                                  onChanged: (val) {
                                    setState(() {
                                      c_language = val!;
                                    });
                                  }),
                              Text(
                                "C Programming",
                                style: TextStyle(
                                    color: whitetitlecolor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: c_plus,
                                  activeColor: whitetitlecolor,
                                  onChanged: (val) {
                                    setState(() {
                                      c_plus = val!;
                                    });
                                  }),
                              Text(
                                "C++",
                                style: TextStyle(
                                    color: whitetitlecolor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: flutter,
                                  activeColor: whitetitlecolor,
                                  onChanged: (val) {
                                    setState(() {
                                      flutter = val!;
                                    });
                                  }),
                              Text(
                                "Flutter",
                                style: TextStyle(
                                    color: whitetitlecolor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Roles",
                                      style: font.subTitleStyle,
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
                                          Things.roles = val ?? "";
                                        },
                                        controller: rolesController,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText:
                                                "Organize team members, Code analysis",
                                            hintStyle: TextStyle(
                                                color: gerysubtitlecolor,
                                                fontSize: 20)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Technologies",
                                      style: font.subTitleStyle,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter Technologies.";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          Things.tech = val ?? "";
                                        },
                                        controller: techController,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "5 - Programmers",
                                            hintStyle: TextStyle(
                                                color: gerysubtitlecolor,
                                                fontSize: 20)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Project Description",
                                      style: font.textForm,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter Project Discription";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          Things.description = val ?? "";
                                        },
                                        controller: descriptionController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText:
                                              "Enter Your Project Description",
                                          hintStyle: TextStyle(
                                            color: gerysubtitlecolor,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                OutlinedButton(
                                  onPressed: () {
                                    if (projectKey.currentState!.validate()) {
                                      projectKey.currentState!.reset();

                                      titleController.clear();
                                      rolesController.clear();
                                      techController.clear();
                                      descriptionController.clear();

                                      setState(() {
                                        c_language = false;
                                        c_plus = false;
                                        flutter = false;
                                      });
                                    }
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
                                    if (c_language) {
                                      Things.languages.add("C Programming");
                                    }
                                    if (c_plus) {
                                      Things.languages.add("c++");
                                    }
                                    if (flutter) {
                                      Things.languages.add("Flutter");
                                    }
                                    if (projectKey.currentState!.validate()) {
                                      projectKey.currentState!.save();

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
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
                                      titleController.clear();
                                      rolesController.clear();
                                      techController.clear();
                                      descriptionController.clear();

                                      setState(() {
                                        c_language = false;
                                        c_plus = false;
                                        flutter = false;
                                      });
                                    }
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
