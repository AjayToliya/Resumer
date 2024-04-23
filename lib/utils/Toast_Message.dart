import 'package:flutter/material.dart';
import 'package:resume_builder/utils/Colours.dart';

toastMessage({
  required BuildContext context,
  required String message,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.green.shade500,
      action: SnackBarAction(
        label: "Next",
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, 'resume_workspace', (route) => false);
        },
        textColor: whitetitlecolor,
      ),
      content: Text(
        message,
      ),
    ),
  );
}
