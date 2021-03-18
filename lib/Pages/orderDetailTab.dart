import 'package:flutter/material.dart';
import 'package:mdhobi_delivery/Config/size_config.dart';

class OrderDetailTab extends StatefulWidget {
  @override
  _OrderDetailTabState createState() => _OrderDetailTabState();
}

class _OrderDetailTabState extends State<OrderDetailTab> {
  List<String> text = [
    'assets/images/shirt.png',
    'assets/images/tshirt.png',
    'assets/images/shirt.png',
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return Container(
          margin: EdgeInsets.symmetric(
              vertical: SizeConfig.screenHeight * 0.02,
              horizontal: SizeConfig.screenWidth * 0.03),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '13 items',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    fontSize: SizeConfig.textMultiplier * 3.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.025),

                /*********************************************************************/
                /*********************************************************************/
                /********************* Mens Section **********************************/
                /*********************************************************************/
                /*********************************************************************/
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.height * 0.07,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(86, 93, 145, 1.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.4),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Text(
                    'Mens',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                      color: Colors.white,
                      fontSize: SizeConfig.textMultiplier * 3.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.025),

                /*********************************************************************/
                /****************** Category Dry Cleaning For Mens *******************/
                /*********************************************************************/

                Container(
                  child: Text(
                    'Dry Cleaning',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                      color: Color.fromRGBO(86, 93, 145, 1.0),
                      fontSize: SizeConfig.textMultiplier * 3.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Column(
                  children: text
                      .map(
                        (e) => Column(
                          children: [
                            Divider(
                              height: 10,
                              thickness: 1,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: SizeConfig.screenHeight * 0.085,
                                      width: SizeConfig.screenWidth * 0.13,
                                      margin: EdgeInsets.symmetric(
                                          vertical:
                                              SizeConfig.screenHeight * 0.016),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            e.toString(),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: SizeConfig.screenWidth * 0.065),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: SizeConfig.screenHeight *
                                                0.020),
                                        Text(
                                          '3 x Shirt',
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.5,
                                            color: Color.fromRGBO(
                                                86, 93, 145, 1.0),
                                            fontSize:
                                                SizeConfig.textMultiplier * 3.8,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '\$${20} per item'.toString(),
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(0, 0, 0, 0.4),
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    2.55,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    // Text(
                                    //   'Amount'.toString(),
                                    //   style: TextStyle(
                                    //     fontFamily: 'Montserrat',
                                    //     fontWeight: FontWeight.w700,
                                    //     color: Color.fromRGBO(86, 93, 145, 1.0),
                                    //     fontSize: 18,
                                    //   ),
                                    //   textAlign: TextAlign.center,
                                    // ),
                                    SizedBox(
                                      height: SizeConfig.screenHeight * 0.01,
                                    ),
                                    Text(
                                      '\$${20}'.toString(),
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize:
                                            SizeConfig.textMultiplier * 3.6,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),

                /*********************************************************************/
                /****************** Category Wash & Iron For Mens *******************/
                /*********************************************************************/

                SizedBox(height: SizeConfig.screenHeight * 0.06),
                Container(
                  child: Text(
                    'Wash & Iron',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                      color: Color.fromRGBO(86, 93, 145, 1.0),
                      fontSize: SizeConfig.textMultiplier * 3.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Column(
                  children: text
                      .map(
                        (e) => Column(
                          children: [
                            Divider(
                              height: 10,
                              thickness: 1,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: SizeConfig.screenHeight * 0.085,
                                      width: SizeConfig.screenWidth * 0.13,
                                      margin: EdgeInsets.symmetric(
                                          vertical:
                                              SizeConfig.screenHeight * 0.016),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            e.toString(),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: SizeConfig.screenWidth * 0.065),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: SizeConfig.screenHeight *
                                                0.020),
                                        Text(
                                          '3 x Shirt',
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.5,
                                            color: Color.fromRGBO(
                                                86, 93, 145, 1.0),
                                            fontSize:
                                                SizeConfig.textMultiplier * 3.8,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '\$${20} per item'.toString(),
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(0, 0, 0, 0.4),
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    2.55,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    // Text(
                                    //   'Amount'.toString(),
                                    //   style: TextStyle(
                                    //     fontFamily: 'Montserrat',
                                    //     fontWeight: FontWeight.w700,
                                    //     color: Color.fromRGBO(86, 93, 145, 1.0),
                                    //     fontSize: 18,
                                    //   ),
                                    //   textAlign: TextAlign.center,
                                    // ),
                                    SizedBox(
                                      height: SizeConfig.screenHeight * 0.01,
                                    ),
                                    Text(
                                      '\$${20}'.toString(),
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize:
                                            SizeConfig.textMultiplier * 3.6,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),

                /*********************************************************************/
                /*********************************************************************/
                /******************  Womens Section **********************************/
                /*********************************************************************/
                /*********************************************************************/

                SizedBox(height: SizeConfig.screenHeight * 0.05),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.height * 0.07,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(86, 93, 145, 1.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.4),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Text(
                    'Womens',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                      color: Colors.white,
                      fontSize: SizeConfig.textMultiplier * 3.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),

                /*********************************************************************/
                /****************** Category Dry Cleaning For Womens *******************/
                /*********************************************************************/

                Container(
                  child: Text(
                    'Dry Cleaning',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                      color: Color.fromRGBO(86, 93, 145, 1.0),
                      fontSize: SizeConfig.textMultiplier * 3.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Column(
                  children: text
                      .map(
                        (e) => Column(
                          children: [
                            Divider(
                              height: 10,
                              thickness: 1,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: SizeConfig.screenHeight * 0.085,
                                      width: SizeConfig.screenWidth * 0.13,
                                      margin: EdgeInsets.symmetric(
                                          vertical:
                                              SizeConfig.screenHeight * 0.016),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            e.toString(),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: SizeConfig.screenWidth * 0.065),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: SizeConfig.screenHeight *
                                                0.020),
                                        Text(
                                          '3 x Shirt',
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.5,
                                            color: Color.fromRGBO(
                                                86, 93, 145, 1.0),
                                            fontSize:
                                                SizeConfig.textMultiplier * 3.8,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '\$${20} per item'.toString(),
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(0, 0, 0, 0.4),
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    2.55,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    // Text(
                                    //   'Amount'.toString(),
                                    //   style: TextStyle(
                                    //     fontFamily: 'Montserrat',
                                    //     fontWeight: FontWeight.w700,
                                    //     color: Color.fromRGBO(86, 93, 145, 1.0),
                                    //     fontSize: 18,
                                    //   ),
                                    //   textAlign: TextAlign.center,
                                    // ),
                                    SizedBox(
                                      height: SizeConfig.screenHeight * 0.01,
                                    ),
                                    Text(
                                      '\$${20}'.toString(),
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize:
                                            SizeConfig.textMultiplier * 3.6,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),

                /*********************************************************************/
                /*********************************************************************/
                /******************  Payemnt Summary Section **********************************/
                /*********************************************************************/
                /*********************************************************************/

                SizedBox(
                  height: SizeConfig.screenHeight * 0.06,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 0),
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment'.toString(),
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: SizeConfig.textMultiplier * 4.5,
                        ),
                      ),
                      Divider(),
                      SizedBox(height: SizeConfig.screenHeight * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subtotal'.toString(),
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 0, 0, 0.6),
                              fontSize: SizeConfig.textMultiplier * 2.8,
                            ),
                          ),
                          Text(
                            '\$${4}'.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: SizeConfig.textMultiplier * 2.8),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'SGST'.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: SizeConfig.textMultiplier * 2.8),
                          ),
                          Text(
                            '\$${14}'.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: SizeConfig.textMultiplier * 2.8),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'CGST'.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: SizeConfig.textMultiplier * 2.8),
                          ),
                          Text(
                            '\$${9}'.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: SizeConfig.textMultiplier * 2.8),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total'.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: SizeConfig.textMultiplier * 2.8),
                          ),
                          Text(
                            '\$${20}'.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: SizeConfig.textMultiplier * 2.8),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Discount'.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: SizeConfig.textMultiplier * 2.8),
                          ),
                          Text(
                            '-\$${7}'.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                color: Colors.red,
                                fontSize: SizeConfig.textMultiplier * 2.8),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery'.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: SizeConfig.textMultiplier * 2.8),
                          ),
                          Text(
                            'Standard'.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                color: Colors.green,
                                fontSize: SizeConfig.textMultiplier * 2.8),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grand Total'.toString(),
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: SizeConfig.textMultiplier * 3.4,
                            ),
                          ),
                          Text(
                            '\$${4}'.toString(),
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: SizeConfig.textMultiplier * 3.4,
                            ),
                          ),
                        ],
                      ),
                    ],
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
