import 'package:flutter/material.dart';
import 'Screen/Achievement.dart';
import 'Screen/Carrier_Objective.dart';
import 'Screen/Contact_Page.dart';
import 'Screen/Delarson.dart';
import 'Screen/Eduction_Page.dart';
import 'Screen/Experirnces_Page.dart';
import 'Screen/Interest.dart';
import 'Screen/Personal_Page.dart';
import 'Screen/Project.dart';
import 'Screen/Reference.dart';
import 'Screen/Splash_page.dart';
import 'Screen/Technical.dart';
import 'Screen/Working_Space_Page.dart';
import 'Screen/home_page.dart';
import 'Screen/pdf.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: 'pdf_view',
      routes: {
        '/': (context) => splashScreen(),
        'homepage': (context) => HomePage(),
        'workspace': (context) => WorkingSpace(),
        'contact_info': (context) => contactInfo(),
        'carrier_objective': (context) => Carrier_Page(),
        'personal_details': (context) => Personal_Page(),
        'eduction': (context) => Education_Page(),
        'experiences': (context) => Experiences_Page(),
        'technical_skills': (context) => Technical_Page(),
        'interest': (context) => Interest_Page(),
        'projects': (context) => Project_Page(),
        'achievements': (context) => Achievement_Page(),
        'reference': (context) => Reference_Page(),
        'declaration': (context) => Declaration_Page(),
        'pdf_view': (context) => pdfview(),
      },
    ),
  );
}
