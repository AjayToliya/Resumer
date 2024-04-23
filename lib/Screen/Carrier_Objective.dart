import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:resume_builder/utils/Appbar.dart';
import 'package:resume_builder/utils/Fonts_Style.dart';
import 'package:resume_builder/utils/PAGE_DATA.dart';
import '../../utils/colours.dart';

class Carrier_Page extends StatefulWidget {
  const Carrier_Page({super.key});

  @override
  State<Carrier_Page> createState() => _Carrier_PageState();
}

class _Carrier_PageState extends State<Carrier_Page> {
  GlobalKey<FormState> carrier_Objective = GlobalKey<FormState>();
  GlobalKey<FormState> current_designation = GlobalKey<FormState>();
  TextEditingController carrierController = TextEditingController();
  TextEditingController designationController = TextEditingController();

  bool isContact = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar.allAppBar(
        title: "Carrier Object",
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
                height: MediaQuery.of(context).size.height / 3.3,
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
                child: Form(
                  key: carrier_Objective,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 15),
                        child: Row(
                          children: [
                            Text(
                              "Carrier Objective",
                              style: font.subTitleStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                maxLines: 5,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter Carrier Objective";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  Things.carrier_obj = val ?? "";
                                },
                                decoration: InputDecoration(
                                  label: Text(
                                    "Descripation",
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w500,
                                      color: gerysubtitlecolor,
                                    ),
                                  ),
                                  border: const OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: GlassmorphicContainer(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 3.9,
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
                  child: Form(
                    key: current_designation,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15.0, left: 15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Current Designation (Experienced",
                                    style: font.subTitleStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Candidate)",
                                    style: font.subTitleStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: TextFormField(
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Current Designation";
                                      }
                                      return null;
                                    },
                                    onSaved: (val) {
                                      Things.current_designation = val ?? "";
                                    },
                                    decoration: InputDecoration(
                                      label: Text(
                                        "Software Engineer",
                                        style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w500,
                                          color: gerysubtitlecolor,
                                        ),
                                      ),
                                      border: const OutlineInputBorder(),
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
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        if (carrier_Objective.currentState!.validate() ||
                            current_designation.currentState!.validate()) {
                          carrier_Objective.currentState!.reset();
                          current_designation.currentState!.reset();

                          carrierController.clear();
                          designationController.clear();
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
                        if (carrier_Objective.currentState!.validate() ||
                            current_designation.currentState!.validate()) {
                          carrier_Objective.currentState!.save();
                          current_designation.currentState!.save();

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
                          carrierController.clear();
                          designationController.clear();
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
