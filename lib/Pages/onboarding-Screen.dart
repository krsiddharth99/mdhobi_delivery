import 'dart:ui';

import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mdhobi_delivery/Config/size_config.dart';
import 'package:mdhobi_delivery/PageRouterConfig/fade-navigate-routing.dart';
import 'package:mdhobi_delivery/Pages/login.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<DummyData> data = [
    DummyData(
      'We Believe in you and Your Service.',
      'assets/images/delivery4.svg',
      Colors.white,
      Color.fromRGBO(86, 93, 145, 1.0),
    ),
    DummyData(
      'We Believe in you and Your Productivity.',
      'assets/images/delivery5.svg',
      Color.fromRGBO(86, 93, 145, 1.0),
      Colors.white,
    ),
  ];
  List<Color> get colors => data.map((p) => p.bgColor).toList();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return Scaffold(
          backgroundColor: Color.fromRGBO(86, 93, 145, 1.0),
          body: ConcentricPageView(
            duration: Duration(milliseconds: 1400),

            // physics: NeverScrollableScrollPhysics(), this is for scrolling and define whether user are
            // allowed to scroll back and forth or not....

            itemCount: data.length,
            itemBuilder: (index, value) {
              // page = data[index % data.length];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenHeight * 0.03),
                    child: SvgPicture.asset(
                      data[index].imgURL.toString(),
                      height: SizeConfig.screenHeight * 0.23,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.07,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      data[index].text,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        color: data[index].textColor,
                        fontSize: SizeConfig.textMultiplier * 2.7,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.24,
                  ),
                  index == data.length - 1
                      ? Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.40),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_right_alt_outlined,
                              color: Color.fromRGBO(86, 93, 145, 1.0),
                              size: SizeConfig.textMultiplier * 4.5,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                FadeRoute(
                                  page: LoginPage(),
                                ),
                              );
                            },
                          ),
                        )
                      : Container(),
                ],
              );
            },
            colors: colors,
            // <Color>[
            //   Color.fromRGBO(86, 93, 145, 1.0),
            //   Colors.white,
            // ],
          ),
        );
      });
    });
  }
}

class DummyData {
  final String text;
  final String imgURL;
  final Color textColor;
  final Color bgColor;
  DummyData(this.text, this.imgURL, this.textColor, this.bgColor);
}
