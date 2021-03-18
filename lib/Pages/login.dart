import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mdhobi_delivery/Config/size_config.dart';
import 'package:mdhobi_delivery/PageRouterConfig/fade-navigate-routing.dart';
import 'package:mdhobi_delivery/Pages/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isVerifiedUsername = true;
  bool isVerifiedPassword = true;
  bool isPasswordVisible = false;

  showBottomLoginSheet() {
    showModalBottomSheet(
        context: context,
        enableDrag: true,
        isScrollControlled: true,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.80,
                  padding: const EdgeInsets.all(15.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.009,
                      ),
                      Text(
                        'Login'.toUpperCase(),
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(86, 93, 145, 1.0),
                          fontSize: SizeConfig.textMultiplier * 3,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.007,
                      ),
                      Text(
                        'Please Enter the detail below.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 0.4),
                          fontSize: SizeConfig.textMultiplier * 2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.02,
                      ),
                      Container(
                        height: SizeConfig.screenHeight * 0.075,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isVerifiedUsername
                                ? Colors.transparent
                                : Colors.red,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              offset: Offset(3, 5),
                              spreadRadius: 0,
                              blurRadius: 5,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: username,
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person_add_alt_1_sharp,
                              color: isVerifiedUsername
                                  ? Color.fromRGBO(86, 93, 145, 1.0)
                                  : Colors.red,
                            ),
                            suffixIcon: isVerifiedUsername
                                ? SizedBox()
                                : Icon(
                                    Icons.info_outline,
                                    color: Colors.red,
                                  ),
                            hintText: 'Username',
                            contentPadding: EdgeInsets.only(
                                top: SizeConfig.screenHeight * 0.022),
                            border: InputBorder.none,
                          ),
                          onChanged: (value) {
                            setState(() {
                              if (value.toString() != 'kr_siddharth99' ||
                                  value == null) {
                                isVerifiedUsername = false;
                              } else {
                                isVerifiedUsername = true;
                              }
                            });
                          },
                          onSubmitted: (value) {
                            setState(() {
                              if (value.toString() != 'kr_siddharth99' ||
                                  value == null) {
                                isVerifiedUsername = false;
                              } else {
                                isVerifiedUsername = true;
                              }
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.02,
                      ),
                      Container(
                        height: SizeConfig.screenHeight * 0.075,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isVerifiedPassword
                                ? Colors.transparent
                                : Colors.red,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              offset: Offset(3, 5),
                              spreadRadius: 0,
                              blurRadius: 5,
                            )
                          ],
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                        ),
                        child: TextField(
                          obscureText: isPasswordVisible ? false : true,
                          controller: password,
                          autofocus: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_open_outlined,
                              color: isVerifiedPassword
                                  ? Color.fromRGBO(86, 93, 145, 1.0)
                                  : Colors.red,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                });
                              },
                              icon: Icon(
                                Icons.remove_red_eye_outlined,
                                color: isVerifiedPassword
                                    ? Colors.grey
                                    : Colors.red,
                              ),
                            ),
                            hintText: 'Password',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                top: SizeConfig.screenHeight * 0.022),
                          ),
                          onChanged: (value) {
                            setState(() {
                              if (value.toString() != '12345' ||
                                  value == null) {
                                isVerifiedPassword = false;
                              } else {
                                isVerifiedPassword = true;
                              }
                            });
                          },
                          onSubmitted: (value) {
                            setState(() {
                              if (value.toString() != '12345' ||
                                  value == null) {
                                isVerifiedPassword = false;
                              } else {
                                isVerifiedPassword = true;
                              }
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.027,
                      ),
                      Container(
                        height: SizeConfig.screenHeight * 0.075,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          color: (isVerifiedPassword && isVerifiedUsername)
                              ? Color.fromRGBO(86, 93, 145, 1.0)
                              : Color.fromRGBO(86, 93, 145, 0.6),
                          child: Text(
                            (isVerifiedPassword && isVerifiedUsername)
                                ? 'Login'
                                : 'Enter User Detail',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: SizeConfig.textMultiplier * 2.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            if (isVerifiedPassword && isVerifiedUsername) {
                              Navigator.push(
                                context,
                                FadeRoute(
                                  page: Home(),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return Scaffold(
          key: key,
          backgroundColor: Color.fromRGBO(86, 93, 145, 1.0),
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(SizeConfig.screenHeight * 0.015),
                  child: SvgPicture.asset(
                    'assets/images/map.svg',
                    height: SizeConfig.imageSizeMultiplier * 68,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.13,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.screenHeight * 0.02,
                          right: SizeConfig.screenHeight * 0.05,
                          bottom: SizeConfig.screenHeight * 0.01),
                      child: Text(
                        'Hello there,',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Montserrat',
                          fontSize: SizeConfig.textMultiplier * 6.5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.05,
                          right: SizeConfig.screenWidth * 0.05),
                      child: Text(
                        'Welcome Back!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                          fontSize: SizeConfig.textMultiplier * 3.3,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Divider(
                  color: Colors.white,
                  indent: SizeConfig.screenWidth * 0.065,
                  endIndent: SizeConfig.screenWidth * 0.70,
                  thickness: 3,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.10,
                ),
                Container(
                  width: SizeConfig.screenWidth * 0.53,
                  height: SizeConfig.screenHeight * 0.09,
                  margin: EdgeInsets.only(left: SizeConfig.screenWidth * 0.24),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.security_outlined,
                          color: Color.fromRGBO(86, 93, 145, 1.0),
                          size: SizeConfig.textMultiplier * 2.8,
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth * 0.02,
                        ),
                        Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(86, 93, 145, 1.0),
                            fontSize: SizeConfig.textMultiplier * 2.7,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {
                      showBottomLoginSheet();
                    },
                  ),
                )
              ],
            ),
          ),
        );
      });
    });
  }
}
