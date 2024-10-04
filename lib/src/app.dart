import 'package:flutter/material.dart';
import 'package:gobjdebug/src/styles/styles.dart';
import 'package:gobjdebug/src/styles/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: kDefaultAppThemeData,
      builder: (context, child) {
        return Scaffold(
          body: Align(
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: kMaxWidthBoxConstraints,
              child: ListView(
                padding: kBodyPadding,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Debug Panel',
                      style: kIntroTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
