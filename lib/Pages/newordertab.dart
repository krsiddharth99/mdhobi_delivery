import 'package:flutter/material.dart';
import 'package:mdhobi_delivery/Config/size_config.dart';
import 'package:mdhobi_delivery/PageRouterConfig/fade-navigate-routing.dart';
import 'package:mdhobi_delivery/Pages/orderDetail.dart';

class NewOrderTab extends StatefulWidget {
  @override
  _NewOrderTabState createState() => _NewOrderTabState();
}

class _NewOrderTabState extends State<NewOrderTab> {
  final List<Map<dynamic, String>> newOrder = [
    {
      'pick-add':
          'M II/112 Sector-c, Aliganj, Sitapur Road, Lucknow, Uttar Pradesh 226021',
      'delivery-add':
          'Ls 2/122 A Sector-D, Mohan Dry Cleaners, Kota, Rajasthan',
      'pickup-time': '8:00 AM',
      'deliver-time': '3:00 PM',
      'status': 'Waiting...',
      'taskid': '#1D4SK',
    },
    {
      'pick-add': '6-D Khidki Village, Malviya Nager, New Delhi, 110020',
      'delivery-add':
          'M-8 Sector-H, Mohan Dry Cleaners, Mayur Vihar Phase-II, New Delhi, 110019',
      'pickup-time': '10:00 AM',
      'status': 'Waiting...',
      'taskid': '#10S3CL',
    },
    {
      'pick-add':
          'M II/112 Sector-c, Aliganj, Sitapur Road, Lucknow, Uttar Pradesh 226021',
      'delivery-add':
          'Ls 2/122 A Sector-D, Mohan Dry Cleaners, Kota, Rajasthan',
      'pickup-time': '8:00 AM',
      'deliver-time': '3:00 PM',
      'status': 'Waiting...',
      'taskid': '#3F4GQ',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return SingleChildScrollView(
          child: Column(
            children: newOrder
                .map(
                  (orderData) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        FadeRoute(
                          page: OrderDetail(
                            orderData: orderData,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: SizeConfig.screenHeight * 0.02,
                          horizontal: SizeConfig.screenWidth * 0.025),
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.screenHeight * 0.025,
                          horizontal: SizeConfig.screenWidth * 0.03),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            spreadRadius: 0.0,
                            blurRadius: 8.0,
                            offset: Offset(3, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pickup Address',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: SizeConfig.textMultiplier * 2.9,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_history,
                                color: Color.fromRGBO(86, 93, 145, 1.0),
                                size: SizeConfig.textMultiplier * 4.4,
                              ),
                              SizedBox(
                                width: SizeConfig.screenWidth * 0.03,
                              ),
                              Expanded(
                                child: Text(
                                  orderData['pick-add'].toString(),
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(86, 93, 145, 1.0),
                                    fontSize: SizeConfig.textMultiplier * 3.1,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Delivery Address',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: SizeConfig.textMultiplier * 2.9,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color.fromRGBO(86, 93, 145, 1.0),
                                size: SizeConfig.textMultiplier * 4.4,
                              ),
                              SizedBox(
                                width: SizeConfig.screenWidth * 0.03,
                              ),
                              Expanded(
                                child: Text(
                                  orderData['delivery-add'].toString(),
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(86, 93, 145, 1.0),
                                    fontSize: SizeConfig.textMultiplier * 3.1,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.034,
                          ),
                          Divider(),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.032,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Order Pickup Time',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                      fontSize: SizeConfig.textMultiplier * 2.9,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.02,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.time_to_leave,
                                        color: Color.fromRGBO(86, 93, 145, 1.0),
                                        size: SizeConfig.textMultiplier * 4.5,
                                      ),
                                      SizedBox(
                                        width: SizeConfig.screenWidth * 0.03,
                                      ),
                                      Text(
                                        orderData['pickup-time'].toString(),
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(86, 93, 145, 1.0),
                                          fontSize:
                                              SizeConfig.textMultiplier * 3.3,
                                        ),
                                        textAlign: TextAlign.start,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Order Delivery Time',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                      fontSize: SizeConfig.textMultiplier * 2.9,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.02,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.lock_clock,
                                        color: Color.fromRGBO(86, 93, 145, 1.0),
                                        size: SizeConfig.textMultiplier * 4.5,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        orderData['deliver-time'].toString(),
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(86, 93, 145, 1.0),
                                          fontSize:
                                              SizeConfig.textMultiplier * 3.3,
                                        ),
                                        textAlign: TextAlign.start,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.026,
                          ),
                          Divider(),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.019,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Task Id : ',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(0, 0, 0, 0.5),
                                        fontSize:
                                            SizeConfig.textMultiplier * 2.7,
                                      ),
                                    ),
                                    TextSpan(
                                      text: orderData['taskid'].toString(),
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(86, 93, 145, 1.0),
                                        fontSize:
                                            SizeConfig.textMultiplier * 2.9,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 32,
                              ),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Status : ',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(0, 0, 0, 0.5),
                                        fontSize:
                                            SizeConfig.textMultiplier * 2.7,
                                      ),
                                    ),
                                    TextSpan(
                                      text: orderData['status'].toString(),
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w700,
                                        color: Colors.red,
                                        fontSize:
                                            SizeConfig.textMultiplier * 2.6,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        );
      });
    });
  }
}
