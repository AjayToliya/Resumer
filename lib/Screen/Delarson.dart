import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:resume_builder/utils/Appbar.dart';
import 'package:resume_builder/utils/Colours.dart';
import 'package:resume_builder/utils/Fonts_Style.dart';

import '../model/resume.dart';
import '../utils/PAGE_DATA.dart';

class Declaration_Page extends StatefulWidget {
  const Declaration_Page({super.key});

  @override
  State<Declaration_Page> createState() => _Declaration_PageState();
}

class _Declaration_PageState extends State<Declaration_Page> {
  GlobalKey<FormState> declarationKey = GlobalKey<FormState>();
  TextEditingController disController = TextEditingController();
  TextEditingController dtController = TextEditingController();
  TextEditingController placeController = TextEditingController();

  bool on = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar.allAppBar(
        title: "Declaration",
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
              Column(
                children: [
                  (on)
                      ? Container(
                          height: MediaQuery.of(context).size.height / 1.6,
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                            color: whitetitlecolor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Declaration",
                                    style: TextStyle(
                                        color: maincolorofapp, fontSize: 30),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        on = !on;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 25),
                                      child: Switch(
                                          activeColor: maincolorofapp,
                                          value: on,
                                          onChanged: (val) {
                                            setState(() {
                                              on = val;
                                            });
                                          }),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 50, top: 10),
                                    child: Icon(
                                      Icons.attractions,
                                      size: 60,
                                    ),
                                  )
                                ],
                              ),
                              Form(
                                key: declarationKey,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 30),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter Description";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Things.dis = val ?? "";
                                              },
                                              controller: disController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: "Description",
                                                hintStyle: TextStyle(
                                                    color: maincolorofapp,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20, top: 50, right: 20),
                                      child: Divider(
                                        color: maincolorofapp,
                                        thickness: 2.5,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 90),
                                                child: Text(
                                                  "Date",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: maincolorofapp),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 21),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 90),
                                                      child: Text(
                                                        "Place(Interview",
                                                        style: TextStyle(
                                                            color:
                                                                maincolorofapp),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 90),
                                                      child: Text(
                                                        "venue/city)",
                                                        style: TextStyle(
                                                            color:
                                                                maincolorofapp),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 20),
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
                                                          return "Enter Date";
                                                        }
                                                        return null;
                                                      },
                                                      onSaved: (val) {
                                                        Things.dt = val ?? "";
                                                      },
                                                      controller: dtController,
                                                      decoration: InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          hintText:
                                                              "DD/MM/YYYY",
                                                          hintStyle: TextStyle(
                                                              fontSize: 16,
                                                              height: 1,
                                                              color:
                                                                  maincolorofapp)),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 100,
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    height: 55,
                                                    width: 100,
                                                    child: TextFormField(
                                                      validator: (val) {
                                                        if (val!.isEmpty) {
                                                          return "Enter Place";
                                                        }
                                                        return null;
                                                      },
                                                      onSaved: (val) {
                                                        Things.place =
                                                            val ?? "";
                                                      },
                                                      controller:
                                                          placeController,
                                                      decoration: InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          hintText: "Eg. Surat",
                                                          hintStyle: TextStyle(
                                                              fontSize: 16,
                                                              height: 1,
                                                              color:
                                                                  maincolorofapp)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 30),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                OutlinedButton(
                                                  onPressed: () {
                                                    if (declarationKey
                                                        .currentState!
                                                        .validate()) {
                                                      declarationKey
                                                          .currentState!
                                                          .reset();

                                                      disController.clear();
                                                      dtController.clear();
                                                      placeController.clear();
                                                    }
                                                  },
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 40,
                                                            vertical: 15),
                                                    foregroundColor:
                                                        maincolorofapp,
                                                  ),
                                                  child: Text(
                                                    "Clear",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    if (declarationKey
                                                        .currentState!
                                                        .validate()) {
                                                      declarationKey
                                                          .currentState!
                                                          .save();

                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          behavior:
                                                              SnackBarBehavior
                                                                  .floating,
                                                          backgroundColor:
                                                              maincolorofapp
                                                                  .withOpacity(
                                                                      0.5),
                                                          action:
                                                              SnackBarAction(
                                                            label: "Next",
                                                            onPressed: () {
                                                              setState(() {
                                                                Navigator.of(
                                                                        context)
                                                                    .pushNamedAndRemoveUntil(
                                                                        "workspace",
                                                                        (route) =>
                                                                            false);
                                                              });
                                                            },
                                                            textColor:
                                                                whitetitlecolor,
                                                          ),
                                                          content: Text(
                                                            "Technical skills information Saved SuccessFully!!!",
                                                          ),
                                                        ),
                                                      );

                                                      disController.clear();
                                                      dtController.clear();
                                                      placeController.clear();

                                                      Resume resume = Resume(
                                                        roles: Things.roles,
                                                        DOB: Things.DOB,
                                                        project_title: Things
                                                            .project_title,
                                                        exit: Things.exit,
                                                        join: Things.join,
                                                        languages:
                                                            Things.languages,
                                                        gender: Things.gender,
                                                        nationality:
                                                            Things.nationality,
                                                        name: Things.name,
                                                        email: Things.email,
                                                        contact: Things.contact,
                                                        address: Things.address,
                                                        profileImageFile: Things
                                                            .profileImageFile,
                                                        reference:
                                                            Things.reference,
                                                        designation:
                                                            Things.designation,
                                                        institute:
                                                            Things.institute,
                                                        course: Things.course,
                                                        school1: Things.school1,
                                                        school2: Things.school2,
                                                        year: Things.year,
                                                        company_name:
                                                            Things.company_name,
                                                        school: Things.school,
                                                        role: Things.role,
                                                        tech: Things.tech,
                                                        description:
                                                            Things.description,
                                                        carrier_obj:
                                                            Things.carrier_obj,
                                                        current_designation: Things
                                                            .current_designation,
                                                        dis: Things.dis,
                                                        dt: Things.dt,
                                                        place: Things.place,
                                                        ResumeName:
                                                            Things.ResumeName,
                                                      );

                                                      Things.allResume
                                                          .add(resume);

                                                      Navigator.of(context)
                                                          .pushNamedAndRemoveUntil(
                                                              'homepage',
                                                              (route) => false);
                                                    }
                                                  },
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 40,
                                                            vertical: 15),
                                                    foregroundColor:
                                                        whitetitlecolor,
                                                    backgroundColor:
                                                        maincolorofapp,
                                                  ),
                                                  child: Text(
                                                    "Save",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      : Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Container(
                                height: MediaQuery.of(context).size.height / 12,
                                width: MediaQuery.of(context).size.width / 1.1,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Declaration",
                                        style: TextStyle(
                                            color: maincolorofapp,
                                            fontSize: 30),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          on = !on;
                                        });
                                      },
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: 100, top: 10),
                                        child: Switch(
                                            value: on,
                                            onChanged: (val) {
                                              setState(() {
                                                on = val;
                                              });
                                            }),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
