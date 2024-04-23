import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pdfview extends StatefulWidget {
  const pdfview({super.key});

  @override
  State<pdfview> createState() => _pdfviewState();
}

class _pdfviewState extends State<pdfview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 5,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              top: 8,
              right: 8,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Ajay Toliya",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(""),
                      ],
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
