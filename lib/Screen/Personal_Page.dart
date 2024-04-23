import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:resume_builder/utils/Appbar.dart';
import 'package:resume_builder/utils/Colours.dart';
import 'package:resume_builder/utils/Fonts_Style.dart';

import '../utils/PAGE_DATA.dart';

class Personal_Page extends StatefulWidget {
  const Personal_Page({super.key});

  @override
  State<Personal_Page> createState() => _Personal_PageState();
}

class _Personal_PageState extends State<Personal_Page> {
  GlobalKey<FormState> personalKey = GlobalKey<FormState>();
  TextEditingController dobController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  String radioStatus = "";
  bool english = false;
  bool hindi = false;
  bool gujarati = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar.allAppBar(
        title: "Personal Details",
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
                  ],
                ),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.5),
                    Color((0xFFFFFFFF)).withOpacity(0.5),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 15, right: 15),
                  child: Form(
                    key: personalKey,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 25),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "DOB",
                                    style: font.subTitleStyle,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter DOB";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          Things.DOB = val ?? "";
                                        },
                                        controller: dobController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "DD/MM/YYYY",
                                          hintStyle:
                                              TextStyle(color: whitetitlecolor),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: whitetitlecolor,
                                            ), // Change enabled border color to white
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: whitetitlecolor,
                                            ), // Change focused border color to white
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
                        Row(
                          children: [
                            Text(
                              "Gender",
                              style: font.subTitleStyle,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: "male",
                              groupValue: radioStatus,
                              activeColor: whitetitlecolor,
                              onChanged: (val) {
                                setState(
                                  () {
                                    radioStatus = val!;
                                  },
                                );
                              },
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: whitetitlecolor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                value: "female",
                                groupValue: radioStatus,
                                activeColor: whitetitlecolor,
                                onChanged: (val) {
                                  setState(() {
                                    radioStatus = val!;
                                  });
                                }),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: whitetitlecolor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Language Known",
                              style: font.subTitleStyle,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: english,
                                activeColor: maincolorofapp,
                                onChanged: (val) {
                                  setState(() {
                                    english = val!;
                                  });
                                }),
                            Text(
                              "English",
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
                                value: hindi,
                                activeColor: maincolorofapp,
                                onChanged: (val) {
                                  setState(() {
                                    hindi = val!;
                                  });
                                }),
                            Text(
                              "Hindi",
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
                                value: gujarati,
                                activeColor: maincolorofapp,
                                onChanged: (val) {
                                  setState(() {
                                    gujarati = val!;
                                  });
                                }),
                            Text(
                              "Gujarati",
                              style: TextStyle(
                                  color: whitetitlecolor,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 25),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Nationality",
                                    style: font.subTitleStyle,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter Nationality";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          Things.nationality = val ?? "";
                                        },
                                        controller: nationalityController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "Indian",
                                          hintStyle:
                                              TextStyle(color: whitetitlecolor),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: whitetitlecolor,
                                            ), // Change enabled border color to white
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
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
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  Things.gender = radioStatus;
                                  if (english) {
                                    Things.languages.add("English");
                                  }
                                  if (hindi) {
                                    Things.languages.add("Hindi");
                                  }
                                  if (gujarati) {
                                    Things.languages.add("Gujarati");
                                  }

                                  if (personalKey.currentState!.validate()) {
                                    personalKey.currentState!.reset();

                                    dobController.clear();
                                    nationalityController.clear();

                                    setState(() {
                                      radioStatus = "";
                                      english = false;
                                      hindi = false;
                                      gujarati = false;
                                    });
                                  }
                                },
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 40,
                                    vertical: 15,
                                  ),
                                  foregroundColor: maincolorofapp,
                                  side: BorderSide(
                                    color: whitetitlecolor,
                                  ), // Change border color to white
                                ),
                                child: Text(
                                  "Clear",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: whitetitlecolor,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (english) {
                                    Things.languages.add("English");
                                  }
                                  if (hindi) {
                                    Things.languages.add("Hindi");
                                  }
                                  if (gujarati) {
                                    Things.languages.add("Gujarati");
                                  }
                                  if (personalKey.currentState!.validate()) {
                                    personalKey.currentState!.save();

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

                                    dobController.clear();
                                    nationalityController.clear();

                                    setState(() {
                                      radioStatus = "";
                                      english = false;
                                      hindi = false;
                                      gujarati = false;
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
            ],
          ),
        ),
      ),
    );
  }
}
