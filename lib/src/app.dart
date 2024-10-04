import 'package:flutter/material.dart';
import 'package:gobjdebug/src/pigeon/debug_service.g.dart';
import 'package:gobjdebug/src/styles/styles.dart';
import 'package:gobjdebug/src/styles/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final DebugServiceHostApi debugServiceHostApi = DebugServiceHostApi();

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
                  Divider(color: kOnBackgroundColor),
                  kGap20,
                  Wrap(
                    children: [
                      OutlinedButton(
                        onPressed: () async {
                          final String hostname = await debugServiceHostApi.getHostname();
                          debugPrint(hostname);

                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'MESSAGE(Host): $hostname',
                                  style: kControlButtonTextStyle,
                                ),
                              ),
                            );
                          }
                        },
                        child: Text(
                          'Get Message from native',
                          style: kControlButtonTextStyle,
                        ),
                      ),
                    ],
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
