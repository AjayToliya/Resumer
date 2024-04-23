import 'package:flutter/material.dart';
import 'package:resume_builder/utils/Colours.dart';
import 'package:resume_builder/utils/Fonts_Style.dart';

class Bar {
  static AppBar homePageAppBar(
      {required String title,
      required BuildContext context,
      String? subtitle}) {
    return AppBar(
      backgroundColor: maincolorofapp,
      centerTitle: true,
      title: Text(
        title,
        style: font.titleStyle,
      ),
      bottom: AppBar(
        leading: Container(),
        centerTitle: true,
        title: Text(
          subtitle!,
          style: font.subTitleStyle,
        ),
        backgroundColor: maincolorofapp,
      ),
    );
  }

  static AppBar allAppBar(
      {required String title,
      required BuildContext context,
      String? subtitle}) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: whitetitlecolor,
        ),
      ),
      backgroundColor: maincolorofapp,
      centerTitle: true,
      title: Text(
        title,
        style: font.titleStyle,
      ),
      bottom: AppBar(
        leading: Container(),
        centerTitle: true,
        title: Text(
          subtitle!,
          style: font.subTitleStyle,
        ),
        backgroundColor: maincolorofapp,
      ),
    );
  }
}
