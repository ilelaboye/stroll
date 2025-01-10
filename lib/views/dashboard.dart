import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stroll/core/utils/colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String selectedOption = "";
  var options = [
    {"title": 'A', "value": "The peace in the early mornings"},
    {"title": 'B', "value": "The magical golden hours"},
    {"title": 'C', "value": "Wind-down time after dinners"},
    {"title": 'D', "value": "The serenity past midnight"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        // fit: StackFit.passthrough,
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/video.png',
                fit: BoxFit.cover,
              )),
          Positioned(
            bottom: 0,
            child: Column(
              children: [
                Container(
                  height: 260,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    // border:
                    //     Border.all(color: StrollColor.dark.withOpacity(0.1)
                    //     ),
                    // color: StrollColor.dark,
                    boxShadow: [
                      BoxShadow(
                          color: StrollColor.dark,
                          blurRadius: 200,
                          offset: Offset(0, 10)),
                    ],
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -50,
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          // decoration: BoxDecoration(
                          //   border: Border.all(color: Colors.blue),
                          // ),
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 5),
                              child: Container(
                                color: StrollColor.dark.withOpacity(0.1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -25,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          left: 50,
                                          top: 10,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                    top: 2,
                                                    bottom: 2,
                                                    left: 25,
                                                    right: 17),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        18, 21, 24, 0.9),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Text(
                                                  'Angelina, 28',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 10, left: 30),
                                                child: Text(
                                                  'What is your favorite time \nof the day?',
                                                  style: TextStyle(
                                                      height: 1,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        ClipOval(
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            padding: EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  18, 21, 24, 0.9),
                                            ),
                                            child: ClipOval(
                                              child: Image.asset(
                                                'assets/images/profile.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '“Mine is definitely the peace in the morning.”',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            color: Color.fromRGBO(
                                                203, 201, 255, 0.7)),
                                      ),
                                    ),
                                    Container(
                                      height: 200,
                                      margin: EdgeInsets.only(top: 10),
                                      child: GridView.builder(
                                        padding: EdgeInsets.zero,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount:
                                              2, // Number of columns
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10,
                                          childAspectRatio: 4 / 1.6,
                                        ),
                                        itemCount: options.length,
                                        itemBuilder: (context, index) {
                                          return buildOption(
                                              options[index]['title']!,
                                              options[index]['value']!);
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOption(String label, String text) {
    bool isSelected = selectedOption == label;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = label;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
        decoration: BoxDecoration(
          color: StrollColor.grey,
          borderRadius: BorderRadius.circular(14),
          border: isSelected
              ? Border.all(color: StrollColor.primary, width: 2)
              : Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? StrollColor.primary : StrollColor.white,
                  width: 1,
                ),
              ),
              child: CircleAvatar(
                backgroundColor:
                    isSelected ? StrollColor.primary : StrollColor.grey,
                child: Text(
                  label,
                  style: TextStyle(
                    color: StrollColor.white,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  height: 1,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
