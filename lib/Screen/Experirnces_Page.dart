import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:resume_builder/utils/Appbar.dart';
import 'package:resume_builder/utils/Fonts_Style.dart';
import 'package:resume_builder/utils/PAGE_DATA.dart';
import '../utils/Colours.dart';

class Experiences_Page extends StatefulWidget {
  const Experiences_Page({super.key});

  @override
  State<Experiences_Page> createState() => _Experiences_PageState();
}

class _Experiences_PageState extends State<Experiences_Page> {
  String radioStatus = "";
  GlobalKey<FormState> experienceKey = GlobalKey<FormState>();
  TextEditingController company_nameController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  TextEditingController rolesController = TextEditingController();
  TextEditingController joinController = TextEditingController();
  TextEditingController exitController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar.allAppBar(
        title: "Experiences",
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
                height: MediaQuery.of(context).size.height / 1.3,
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
                  padding: EdgeInsets.only(left: 12, right: 12, top: 12),
                  child: SingleChildScrollView(
                    child: Form(
                      key: experienceKey,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 12),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Company Name",
                                      style: font.textForm,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter Company Name";
                                            }
                                            return null;
                                          },
                                          onSaved: (val) {
                                            Things.company_name = val ?? "";
                                          },
                                          controller: company_nameController,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText:
                                                "New Enterprise,San Francisco",
                                            hintStyle: TextStyle(
                                              color: whitetitlecolor,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 12),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "School/College/Institute",
                                      style: font.textForm,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
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
                                            Things.school = val ?? "";
                                          },
                                          controller: schoolController,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "Quality Test Engineer",
                                            hintStyle: TextStyle(
                                              color: whitetitlecolor,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 12),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Roles (optional)",
                                      style: font.textForm,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          maxLines: 3,
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter Roles First";
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
                                                "Working with team members to come up with new concepts and product analysis...",
                                            hintStyle: TextStyle(
                                              color: whitetitlecolor,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 12),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Employed Status",
                                        style: TextStyle(
                                          color: whitetitlecolor,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          radioStatus = "previous";
                                        });
                                      },
                                      child: Radio(
                                          value: "previous",
                                          groupValue: radioStatus,
                                          activeColor: whitetitlecolor,
                                          onChanged: (val) {
                                            setState(() {
                                              radioStatus = val!;
                                            });
                                          }),
                                    ),
                                    Text(
                                      "Previously Employed",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: whitetitlecolor,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              radioStatus = "current";
                                            });
                                          },
                                          child: Radio(
                                              value: "current",
                                              groupValue: radioStatus,
                                              activeColor: whitetitlecolor,
                                              onChanged: (val) {
                                                setState(() {
                                                  radioStatus = val!;
                                                });
                                              }),
                                        ),
                                        Text(
                                          "Currently Employed",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: whitetitlecolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: gerysubtitlecolor,
                                  thickness: 2,
                                ),
                                if (radioStatus == "previous")
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 90, top: 10),
                                            child: Text(
                                              "Date Joined",
                                              style: font.textForm,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 38, top: 10),
                                            child: Text(
                                              "Date Exit",
                                              style: font.subTitleStyle,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: 55,
                                                width: 100,
                                                child: TextFormField(
                                                  validator: (val) {
                                                    if (val!.isEmpty) {
                                                      return "Enter school/college/institute.";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (val) {
                                                    Things.join = val ?? "";
                                                  },
                                                  controller: joinController,
                                                  decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    hintText: "DD/MM/YYYY",
                                                    hintStyle: TextStyle(
                                                      fontSize: 16,
                                                      height: 1.5,
                                                      color: whitetitlecolor,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: 55,
                                                width: 100,
                                                child: TextFormField(
                                                  validator: (val) {
                                                    if (val!.isEmpty) {
                                                      return "Enter school/college/institute.";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (val) {
                                                    Things.exit = val ?? "";
                                                  },
                                                  controller: exitController,
                                                  decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    hintText: "DD/MM/YYYY",
                                                    hintStyle: TextStyle(
                                                      fontSize: 16,
                                                      height: 1.5,
                                                      color: whitetitlecolor,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                else if (radioStatus == "current")
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 90, top: 10),
                                            child: Text(
                                              "Date Joined",
                                              style: font.subTitleStyle,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: 55,
                                                child: TextFormField(
                                                  validator: (val) {
                                                    if (val!.isEmpty) {
                                                      return "Enter school/college/institute.";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (val) {
                                                    Things.join = val ?? "";
                                                  },
                                                  controller: joinController,
                                                  decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    hintText: "DD/MM/YYYY",
                                                    hintStyle: TextStyle(
                                                      fontSize: 16,
                                                      height: 1.5,
                                                      color: gerysubtitlecolor,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
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
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        if (experienceKey.currentState!.validate()) {
                          experienceKey.currentState!.save();

                          company_nameController.clear();
                          schoolController.clear();
                          rolesController.clear();

                          setState(() {
                            radioStatus = "";
                          });
                        }
                      },
                      style: OutlinedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        foregroundColor: maincolorofapp,
                        side: BorderSide(
                          color: whitetitlecolor,
                        ),
                      ),
                      child: Text(
                        "Clear",
                        style: TextStyle(fontSize: 17, color: whitetitlecolor),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (experienceKey.currentState!.validate()) {
                          experienceKey.currentState!.save();

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: maincolorofapp.withOpacity(0.5),
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
                          company_nameController.clear();
                          schoolController.clear();
                          rolesController.clear();

                          setState(() {
                            radioStatus = "";
                          });
                        }
                      },
                      style: OutlinedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
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
    );
  }
}
