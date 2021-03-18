import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mdhobi_delivery/Config/size_config.dart';
import 'package:mdhobi_delivery/PageRouterConfig/fade-navigate-routing.dart';
import 'package:mdhobi_delivery/Pages/mainpage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return Scaffold(
          backgroundColor: Color.fromRGBO(86, 93, 145, 1.0),
          body: Padding(
            padding: EdgeInsets.all(SizeConfig.screenHeight * 0.012),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.032,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hello, Siddharth!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                          fontSize: SizeConfig.textMultiplier * 2.5,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.notifications_on,
                          color: Colors.white,
                          size: SizeConfig.textMultiplier * 2.6,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.025,
                  ),
                  SvgPicture.asset(
                    'assets/images/delivery4.svg',
                    height: SizeConfig.imageSizeMultiplier * 75,
                  ),
                  Text(
                    'You Are Offline Now!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      fontSize: SizeConfig.textMultiplier * 2.7,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.018,
                  ),
                  Text(
                    'Go online accepts your orders and make customer happy with your service',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.7),
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Montserrat',
                      fontSize: SizeConfig.textMultiplier * 2.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.22,
                  ),
                  Container(
                    height: SizeConfig.screenHeight * 0.072,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      color: Color.fromRGBO(239, 191, 107, 1.0),
                      child: Text(
                        'Go Online',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: SizeConfig.textMultiplier * 2.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          FadeRoute(
                            page: MainPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
    });
  }
}
