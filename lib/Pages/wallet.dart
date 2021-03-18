import 'package:flutter/material.dart';
import 'package:mdhobi_delivery/Config/size_config.dart';
import 'package:mdhobi_delivery/PageRouterConfig/fade-navigate-routing.dart';
import 'package:mdhobi_delivery/Pages/payment.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(
        builder: (context, orientation) {
          SizeConfig().init(constraints, orientation);
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color.fromRGBO(86, 93, 145, 1.0),
              elevation: 0.5,
              title: Text(
                'Wallet',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat',
                  fontSize: SizeConfig.textMultiplier * 2.8,
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.notifications_on,
                    color: Colors.white,
                    size: 23,
                  ),
                  onPressed: () {},
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(SizeConfig.screenHeight * 0.28),
                child: Container(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 0.06,
                      right: SizeConfig.screenWidth * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '₹' + ' 5000',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                          fontSize: SizeConfig.textMultiplier * 7.6,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Available Balance'.toString(),
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 0.6),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                  fontSize: SizeConfig.textMultiplier * 2.5,
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.help_outline,
                                  color: Color.fromRGBO(255, 255, 255, 0.6),
                                  size: SizeConfig.textMultiplier * 3.0,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          OutlineButton(
                            borderSide: BorderSide(color: Colors.white),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                FadeRoute(
                                  page: PaymentPage(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Request'.toString(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.6),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Montserrat',
                                    fontSize: SizeConfig.textMultiplier * 2.5,
                                  ),
                                ),
                                Icon(
                                  Icons.navigate_next,
                                  color: Color.fromRGBO(255, 255, 255, 0.6),
                                  size: SizeConfig.textMultiplier * 3.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 3,
                        color: Colors.white,
                        endIndent: SizeConfig.screenWidth * 0.75,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(SizeConfig.screenWidth * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          'Recent Transaction',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                            fontSize: SizeConfig.textMultiplier * 2.8,
                          ),
                        ),
                        SizedBox(width: SizeConfig.screenWidth * 0.03),
                        Icon(
                          Icons.history,
                          color: Color.fromRGBO(0, 0, 0, 0.4),
                          size: SizeConfig.textMultiplier * 3.0,
                        ),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Feb 20, 2021',
                      style: TextStyle(
                        color: Color.fromRGBO(86, 93, 145, 1.0),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                        fontSize: SizeConfig.textMultiplier * 2.6,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.03,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Color.fromRGBO(0, 255, 0, 0.1),
                          child: Icon(
                            Icons.addchart_outlined,
                            color: Colors.green,
                            size: SizeConfig.textMultiplier * 4.0,
                          ),
                        ),
                        SizedBox(width: SizeConfig.screenWidth * 0.04),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Task Id : #B4DK09 Commission',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.9),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat',
                                  fontSize: SizeConfig.textMultiplier * 2.2,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Feb, 20 at 3:00 PM',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.4),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                  fontSize: SizeConfig.textMultiplier * 1.8,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          '+ ₹200',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                            fontSize: SizeConfig.textMultiplier * 2.5,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),
                    /************************************************************************************/
                    /************************************************************************************/
                    /******************************** Repeated data Entry *******************************/
                    /************************************************************************************/
                    /************************************************************************************/
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Color.fromRGBO(0, 255, 0, 0.1),
                          child: Icon(
                            Icons.addchart_outlined,
                            color: Colors.green,
                            size: SizeConfig.textMultiplier * 4.0,
                          ),
                        ),
                        SizedBox(width: SizeConfig.screenWidth * 0.04),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Credited to bank account from mDhobi',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.9),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat',
                                  fontSize: SizeConfig.textMultiplier * 2.2,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Aug, 01 at 12:00 PM',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.4),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                  fontSize: SizeConfig.textMultiplier * 1.8,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          '+ ₹2000',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                            fontSize: SizeConfig.textMultiplier * 2.5,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),

                    /**************************************************************************************/
                    /**************************************************************************************/
                    /***********************************Repeated Content***********************************/
                    /**************************************************************************************/
                    /**************************************************************************************/
                    /**************************************************************************************/
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Feb 20, 2021',
                      style: TextStyle(
                        color: Color.fromRGBO(86, 93, 145, 1.0),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                        fontSize: SizeConfig.textMultiplier * 2.6,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.03,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Color.fromRGBO(0, 255, 0, 0.1),
                          child: Icon(
                            Icons.addchart_outlined,
                            color: Colors.green,
                            size: SizeConfig.textMultiplier * 4.0,
                          ),
                        ),
                        SizedBox(width: SizeConfig.screenWidth * 0.04),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Task Id : #B4DK09 Commission',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.9),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat',
                                  fontSize: SizeConfig.textMultiplier * 2.2,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Feb, 20 at 3:00 PM',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.4),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                  fontSize: SizeConfig.textMultiplier * 1.8,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          '+ ₹200',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                            fontSize: SizeConfig.textMultiplier * 2.5,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),
                    /************************************************************************************/
                    /************************************************************************************/
                    /******************************** Repeated data Entry *******************************/
                    /************************************************************************************/
                    /************************************************************************************/
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Color.fromRGBO(0, 255, 0, 0.1),
                          child: Icon(
                            Icons.addchart_outlined,
                            color: Colors.green,
                            size: SizeConfig.textMultiplier * 4.0,
                          ),
                        ),
                        SizedBox(width: SizeConfig.screenWidth * 0.04),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Credited to bank account from mDhobi',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.9),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat',
                                  fontSize: SizeConfig.textMultiplier * 2.2,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Aug, 01 at 12:00 PM',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.4),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                  fontSize: SizeConfig.textMultiplier * 1.8,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          '+ ₹2000',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                            fontSize: SizeConfig.textMultiplier * 2.5,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
