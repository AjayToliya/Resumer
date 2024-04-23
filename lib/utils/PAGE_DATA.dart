import 'dart:io';

import 'package:flutter/cupertino.dart';

import '../model/resume.dart';

class Things {
  static List<Map<String, dynamic>> options = [
    {
      "title": "Contact Info",
      "icons": "assets/Icons/information.png",
      "navigaer": "contact_info",
    },
    {
      "title": "Carrier Objective",
      "icons": "assets/Icons/briefcase.png",
      "navigaer": "carrier_objective",
    },
    {
      "title": "Personal Details",
      "icons": "assets/Icons/user.png",
      "navigaer": "personal_details",
    },
    {
      "title": "Eduction",
      "icons": "assets/Icons/mortarboard.png",
      "navigaer": "eduction",
    },
    {
      "title": "Experiences",
      "icons": "assets/Icons/thinking.png",
      "navigaer": "experiences",
    },
    {
      "title": "Texhnical Skills",
      "icons": "assets/Icons/declaration.png",
      "navigaer": "technical_skills",
    },
    {
      "title": "Interest/Hobbies",
      "icons": "assets/Icons/open-book.png",
      "navigaer": "interest",
    },
    {
      "title": "Projects",
      "icons": "assets/Icons/project.png",
      "navigaer": "projects",
    },
    {
      "title": "Achievements",
      "icons": "assets/Icons/achievement.png",
      "navigaer": "achievements",
    },
    {
      "title": "Reference",
      "icons": "assets/Icons/handshake.png",
      "navigaer": "reference",
    },
    {
      "title": "Declaration",
      "icons": "assets/Icons/declaration.png",
      "navigaer": "declaration",
    },
  ];
  //technical skill
  static List<TextEditingController> allSkill = [
    TextEditingController(),
    TextEditingController(),
  ];
  static List<String> hobbyData = [];

  //Interest/Hobbies
  static List<TextEditingController> allHobbies = [
    TextEditingController(),
    TextEditingController(),
  ];

  static List<String> skillData = [];
  static String ResumeName = "";

  static List<Resume> allResume = [];
  //Contact Info Variable

  static String name = "";
  static String email = "";
  static String contact = "";
  static String address = "";
  static File? profileImageFile;

  //Reference Variables
  static String reference = "";
  static String designation = "";
  static String institute = "";

  //Education Variables
  static String course = "";
  static String school1 = "";
  static String school2 = "";
  static String year = "";

  //Experience Variables
  static String company_name = "";
  static String school = "";
  static String roles = "";
  static String join = "";
  static String exit = "";

  //Personal Details Variables
  static String DOB = "";
  static String nationality = "";
  static String gender = "";
  static List<String> languages = [];

  //Project Variables
  static String project_title = "";
  static String role = "";
  static String tech = "";
  static String description = "";

  //Carrier_obj Variables
  static String carrier_obj = "";
  static String current_designation = "";

  //Declaration Variables
  static String dis = "";
  static String dt = "";
  static String place = "";
}
