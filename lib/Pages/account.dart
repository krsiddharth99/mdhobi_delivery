import 'package:flutter/material.dart';
import 'package:mdhobi_delivery/Config/size_config.dart';
// import 'package:url_launcher/url_launcher.dart';

// void _launchURL(_url) async =>
//     await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromRGBO(86, 93, 145, 1.0),
            elevation: 0.5,
            title: Text(
              'Account',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat',
                fontSize: SizeConfig.textMultiplier * 2.8,
              ),
            ),
            actions: [
              PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: "1",
                    child: Text(
                      "About Us",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: SizeConfig.textMultiplier * 2.3,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: "2",
                    child: Text(
                      "Contact Us",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: SizeConfig.textMultiplier * 2.3,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: "3",
                    child: Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: SizeConfig.textMultiplier * 2.3,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
                offset: Offset(50, 15),
                onSelected: (selected) async {
                  // if (selected == "1") {
                  //   _launchURL("https://www.mdhobi.com/about-us");
                  // } else if (selected == "2") {
                  //   _launchURL("https://www.mdhobi.com/terms-and-conditions");
                  // } else if (selected == "3") {
                  //   _launchURL("https://www.mdhobi.com/contact-us");
                  // }
                },
                onCanceled: () {},
              ),
            ],
            bottom: PreferredSize(
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.04),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: SizeConfig.screenWidth * 0.04),
                    Container(
                      height: SizeConfig.screenHeight * 0.15,
                      width: SizeConfig.screenWidth * 0.275,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            maxRadius: 45,
                            child: Center(
                              child: Text(
                                'S.K',
                                style: TextStyle(
                                  color: Color.fromRGBO(86, 93, 145, 1.0),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                  fontSize: SizeConfig.textMultiplier * 3.5,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: SizeConfig.screenHeight * 0.08,
                            left: SizeConfig.screenWidth * 0.14,
                            child: Container(
                              height: 45,
                              width: 45,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                color: Colors.green.shade400,
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                  size: SizeConfig.textMultiplier * 2.5,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth * 0.02),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Siddharth Kumar',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                            fontSize: SizeConfig.textMultiplier * 4.0,
                          ),
                        ),
                        SizedBox(height: SizeConfig.screenHeight * 0.008),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.60,
                          child: Text(
                            'kumar99.siddharth@gmail.com',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.6),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              fontSize: SizeConfig.textMultiplier * 2.5,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(height: SizeConfig.screenHeight * 0.006),
                        Text(
                          '+91 9076652887',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.6),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                            fontSize: SizeConfig.textMultiplier * 2.2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              preferredSize: Size.fromHeight(SizeConfig.screenHeight * 0.22),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                ListTile(
                  leading: Icon(
                    Icons.verified_user_outlined,
                    color: Color.fromRGBO(86, 93, 145, 1.0),
                    size: SizeConfig.textMultiplier * 4,
                  ),
                  title: Text(
                    'Username',
                    style: TextStyle(
                      color: Color.fromRGBO(86, 93, 145, 1.0),
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat',
                      fontSize: SizeConfig.textMultiplier * 2.8,
                    ),
                  ),
                  subtitle: Text(
                    'kumar99.siddharth@gmail.com',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      fontSize: SizeConfig.textMultiplier * 2.5,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.lock_open_outlined,
                    color: Color.fromRGBO(86, 93, 145, 1.0),
                    size: SizeConfig.textMultiplier * 4,
                  ),
                  title: Text(
                    'Password',
                    style: TextStyle(
                      color: Color.fromRGBO(86, 93, 145, 1.0),
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat',
                      fontSize: SizeConfig.textMultiplier * 2.8,
                    ),
                  ),
                  subtitle: Text(
                    '***************',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      fontSize: SizeConfig.textMultiplier * 2.5,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.red,
                    size: SizeConfig.textMultiplier * 4,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat',
                      fontSize: SizeConfig.textMultiplier * 2.7,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
    });
  }
}
