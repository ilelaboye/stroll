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
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.53,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/video.png',
                fit: BoxFit.cover,
              )),
          Positioned(
              top: 100,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Stroll Bonfire',
                          style: TextStyle(
                              color: StrollColor.primary.withOpacity(0.98),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: StrollColor.primary.withOpacity(0.98),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/images/timer.png',
                              height: 17,
                              width: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '22h 00m',
                              style: TextStyle(height: 1, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/images/profile_sm.png',
                              height: 17,
                              width: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '103',
                              style: TextStyle(height: 1, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
            bottom: 0,
            child: Column(
              children: [
                Container(
                  height: 299,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: StrollColor.dark,
                          blurRadius: 600,
                          offset: Offset(0, 0)),
                    ],
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -70,
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 10),
                              child: Container(
                                color: StrollColor.dark.withOpacity(0.1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -48,
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
                                      height: 170,
                                      margin: EdgeInsets.only(top: 10),
                                      child: GridView.builder(
                                        padding: EdgeInsets.zero,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
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
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Pick your option.',
                                              style: TextStyle(
                                                  fontSize: 13, height: 1.5),
                                            ),
                                            Text(
                                              'See who has a similar mind.',
                                              style: TextStyle(
                                                  fontSize: 13, height: 1),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                  height: 49,
                                                  width: 49,
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color:
                                                          StrollColor.primary,
                                                      width: 2,
                                                    ),
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/voice.png',
                                                  )),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                  height: 49,
                                                  width: 49,
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: StrollColor
                                                              .primary),
                                                  child: const Icon(
                                                    Icons.arrow_forward,
                                                    color: StrollColor.dark,
                                                  )),
                                            ),
                                          ],
                                        )
                                      ],
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
