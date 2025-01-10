import 'package:flutter/material.dart';
import 'package:stroll/core/utils/colors.dart';
import 'package:stroll/core/utils/theme.dart';
import 'package:stroll/views/dashboard.dart';

void main() {
  runApp(StrollApp());
}

class StrollApp extends StatefulWidget {
  StrollApp({super.key});

  @override
  State<StrollApp> createState() => _StrollAppState();
}

class _StrollAppState extends State<StrollApp> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const Dashboard(),
    const Dashboard(),
    const Dashboard(),
    const Dashboard()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: StrollTheme.light(),
      darkTheme: StrollTheme.dark(),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(top: 3),
          decoration: const BoxDecoration(color: StrollColor.black50),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            backgroundColor: StrollColor.black50,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/poker.png',
                  height: 30,
                  width: 30,
                  fit: BoxFit.contain,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      'assets/images/vector.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                        right: -10,
                        child: Container(
                          height: 12,
                          width: 16,
                          decoration: const BoxDecoration(
                              color: StrollColor.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ))
                  ],
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      'assets/images/icons.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                        right: -10,
                        child: Container(
                          height: 15,
                          width: 22,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 0),
                          decoration: const BoxDecoration(
                              color: StrollColor.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            '10',
                            style: TextStyle(
                                fontSize: 12.5,
                                color: StrollColor.dark,
                                fontWeight: FontWeight.bold,
                                height: 1),
                          ),
                        ))
                  ],
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/user.png',
                  height: 30,
                  width: 30,
                  fit: BoxFit.contain,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
