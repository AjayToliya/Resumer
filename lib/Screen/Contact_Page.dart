import 'dart:io';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder/utils/Appbar.dart';
import '../utils/Colours.dart';
import '../utils/PAGE_DATA.dart';

class contactInfo extends StatefulWidget {
  const contactInfo({super.key});

  @override
  State<contactInfo> createState() => _contactInfoState();
}

class _contactInfoState extends State<contactInfo> {
  ImagePicker imagePicker = ImagePicker();
  XFile? xFile;
  String? pickImagePath;
  bool isContact = true;

  GlobalKey<FormState> contactInfoKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar.allAppBar(title: "Contact", context: context, subtitle: ""),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: maincolorofapp,
        child: SingleChildScrollView(
          child: Column(
            children: [
              GlassmorphicContainer(
                width: MediaQuery.of(context).size.width / 2.1,
                height: MediaQuery.of(context).size.height / 4.4,
                borderRadius: 500,
                blur: 20,
                alignment: Alignment.center,
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
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            "Pick Image",
                          ),
                          content: Text(
                            "Choose Image From Gallery or Camera",
                          ),
                          actions: [
                            FloatingActionButton(
                              mini: true,
                              onPressed: () async {
                                xFile = await imagePicker.pickImage(
                                  source: ImageSource.camera,
                                );
                                setState(() {
                                  if (xFile != null) {
                                    pickImagePath = xFile!.path;
                                  }
                                });

                                Navigator.of(context).pop();
                              },
                              elevation: 3,
                              child: Icon(
                                Icons.camera_alt,
                              ),
                            ),
                            FloatingActionButton(
                              mini: true,
                              onPressed: () async {
                                xFile = await imagePicker.pickImage(
                                  source: ImageSource.gallery,
                                );
                                setState(() {
                                  if (xFile != null) {
                                    pickImagePath = xFile!.path;
                                  }
                                });

                                Navigator.of(context).pop();
                              },
                              elevation: 3,
                              child: Icon(
                                Icons.image,
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: CircleAvatar(
                      radius: 70,
                      backgroundColor: whitetitlecolor.withOpacity(0.5),
                      backgroundImage: (pickImagePath != null)
                          ? FileImage(File(pickImagePath!))
                          : null,
                      child: (pickImagePath != null)
                          ? Container()
                          : Icon(
                              Icons.add,
                              color: maincolorofapp,
                              size: 30,
                            )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: GlassmorphicContainer(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 1.5,
                  borderRadius: 20,
                  blur: 20,
                  alignment: Alignment.center,
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
                    child: Form(
                      key: contactInfoKey,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, right: 12),
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 23),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter Name";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Things.name = val ?? "";
                                      },
                                      controller: nameController,
                                      decoration: const InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.person,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                        label: Text(
                                          "Name",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        border: OutlineInputBorder(),
                                        hintText: "Name",
                                        hintStyle: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.0, right: 12),
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 23),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter Email";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Things.email = val ?? "";
                                      },
                                      controller: emailController,
                                      decoration: const InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        label: Text(
                                          "Email",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        border: OutlineInputBorder(),
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.0, right: 12),
                            child: Container(
                              margin: EdgeInsets.only(bottom: 23),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter Contact";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Things.contact = val ?? "";
                                      },
                                      controller: contactController,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.call,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                        label: Text(
                                          "Contact",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        border: OutlineInputBorder(),
                                        hintText: "Contact",
                                        hintStyle: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.0, right: 12),
                            child: Container(
                              margin: EdgeInsets.only(bottom: 23),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter Address";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Things.address = val ?? "";
                                      },
                                      controller: addressController,
                                      maxLines: 3,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.location_on,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                        label: Text(
                                          "Address",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        border: OutlineInputBorder(),
                                        hintText: "Current Address",
                                        hintStyle: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  if (contactInfoKey.currentState!.validate()) {
                                    contactInfoKey.currentState!.reset();

                                    nameController.clear();
                                    emailController.clear();
                                    contactController.clear();
                                    addressController.clear();
                                  }
                                },
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 14),
                                  foregroundColor: maincolorofapp,
                                  side: BorderSide(
                                    color: whitetitlecolor,
                                  ),
                                ),
                                child: Text(
                                  "Clear",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (contactInfoKey.currentState!.validate()) {
                                    contactInfoKey.currentState!.save();

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

                                    nameController.clear();
                                    emailController.clear();
                                    contactController.clear();
                                    addressController.clear();
                                  }
                                },
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 14),
                                  foregroundColor: whitetitlecolor,
                                  backgroundColor: maincolorofapp,
                                ),
                                child: Text("Save"),
                              ),
                            ],
                          )
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
