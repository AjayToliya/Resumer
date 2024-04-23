import 'dart:io';

class Resume {
  // List<String> skillData;
  // List<String> hobbyData;
  String ResumeName;

  String name;
  String email;
  String contact;
  String address;
  File? profileImageFile;

  //Reference Variables
  String reference;
  String designation;
  String institute;

  //Education Variables
  String course;
  String school1;
  String school2;
  String year;

  //Experience Variables
  String company_name;
  String school;
  String roles;
  String join;
  String exit;

  //Personal Details Variables
  String DOB;
  String nationality;
  String gender;
  List<String> languages;

  //Project Variables
  String project_title;
  String role;
  String tech;
  String description;

  //Carrier_obj Variables
  String carrier_obj;
  String current_designation;

  //Declaration Variables
  String dis;
  String dt;
  String place;

  Resume({
    required this.roles,
    required this.DOB,
    required this.project_title,
    required this.exit,
    required this.join,
    required this.languages,
    required this.gender,
    required this.nationality,
    required this.name,
    required this.email,
    required this.contact,
    required this.address,
    required this.profileImageFile,
    required this.reference,
    required this.designation,
    required this.institute,
    required this.course,
    required this.school1,
    required this.school2,
    required this.year,
    required this.company_name,
    required this.school,
    required this.role,
    required this.tech,
    required this.description,
    required this.carrier_obj,
    required this.current_designation,
    required this.dis,
    required this.dt,
    required this.place,
    required this.ResumeName,
    // required this.hobbyData,
    // required this.skillData,
  });
}
