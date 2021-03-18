import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mdhobi_delivery/PageRouterConfig/fade-navigate-routing.dart';
import 'package:mdhobi_delivery/Pages/onboarding-Screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1500), () {
      Navigator.push(
        context,
        FadeRoute(
          page: OnboardingScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(86, 93, 145, 1.0),
      body: new Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.9,
          child: SvgPicture.asset(
            'assets/images/delivery4.svg',
            height: MediaQuery.of(context).size.height * 0.70,
          ),
        ),
      ),
    );
  }
}
