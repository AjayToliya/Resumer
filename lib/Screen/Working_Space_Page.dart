import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:resume_builder/utils/Appbar.dart';
import 'package:resume_builder/utils/Colours.dart';

import '../utils/PAGE_DATA.dart';

class WorkingSpace extends StatefulWidget {
  const WorkingSpace({super.key});

  @override
  State<WorkingSpace> createState() => _WorkingSpaceState();
}

class _WorkingSpaceState extends State<WorkingSpace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar.allAppBar(
          title: "Resume Workspace",
          context: context,
          subtitle: "Build Options"),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: maincolorofapp,
        child: SingleChildScrollView(
          child: Column(
            children: Things.options
                .map(
                  (e) => Padding(
                    padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pushNamed(e['navigaer']);
                        });
                      },
                      child: GlassmorphicContainer(
                        width: double.infinity,
                        height: 200,
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
                            Color(0xFFFFFFFF).withOpacity(0.5),
                          ],
                        ),
                        child: Row(
                          children: [
                            GlassmorphicContainer(
                              width: MediaQuery.of(context).size.width / 2.3,
                              height: 350,
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
                              child: Center(
                                child: Image(
                                  image: AssetImage(e["icons"]),
                                  height: 100,
                                  color: whitetitlecolor,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    e['title'],
                                    style: TextStyle(
                                      color: whitetitlecolor,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
