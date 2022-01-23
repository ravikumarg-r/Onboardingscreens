import 'package:finance_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final onboardingPagesList = [
    PageModel(
      widget: Column(
        children: [
          Container(
              padding: const EdgeInsets.only(bottom: 45.0),
              child: Image.asset('assets/images/slide_1.png',
                  color: pageImageColor)),
          Container(
              width: double.infinity,
              child: const Text('SECURED BACKUP', style: pageTitleStyle)),
          Container(
            width: double.infinity,
            child: const Text(
              'Keep your files in closed safe so you can\'t lose them',
              style: pageInfoStyle,
            ),
          ),
        ],
      ),
    ),
    PageModel(
      widget: Column(
        children: [
          Image.asset('assets/images/slide_2.png', color: pageImageColor),
          const Text('CHANGE AND RISE', style: pageTitleStyle),
          const Text(
            'Give others access to any file or folder you choose',
            style: pageInfoStyle,
          )
        ],
      ),
    ),
    PageModel(
      widget: Column(
        children: [
          Image.asset('assets/images/slide_3.png', color: pageImageColor),
          const Text('EASY ACCESS', style: pageTitleStyle),
          const Text(
            'Reach your files anytime from any devices anywhere',
            style: pageInfoStyle,
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        proceedButtonStyle: ProceedButtonStyle(
          proceedButtonRoute: (context) {
            return Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(
                  title: 'Login',
                ),
              ),
              (route) => false,
            );
          },
        ),
        pages: onboardingPagesList,
        indicator: Indicator(
            indicatorDesign: IndicatorDesign.polygon(
                polygonDesign: PolygonDesign(
                    polygon: DesignType.polygon_square, polygonSpacer: 13.0))),
      ),
    );
  }
}
