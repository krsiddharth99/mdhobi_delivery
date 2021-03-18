import 'package:flutter/material.dart';
import 'package:mdhobi_delivery/Components/orderDetailCard.dart';
import 'package:mdhobi_delivery/Config/size_config.dart';

class OrderDetailInfoTab extends StatefulWidget {
  final Map<dynamic, String> orderData;
  final bool isEmpty;
  OrderDetailInfoTab({this.orderData, this.isEmpty});

  @override
  _OrderDetailInfoTabState createState() => _OrderDetailInfoTabState();
}

class _OrderDetailInfoTabState extends State<OrderDetailInfoTab> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(
        builder: (context, orientation) {
          SizeConfig().init(constraints, orientation);
          return widget.isEmpty
              ? Container(
                  child: Center(
                    child: Text('All Order Delivered'),
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              spreadRadius: 0.0,
                              blurRadius: 6,
                              offset: Offset(3, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Order Pickup Time',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                    fontSize: SizeConfig.textMultiplier * 2.7,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.time_to_leave,
                                      color: Color.fromRGBO(86, 93, 145, 1.0),
                                      size: SizeConfig.textMultiplier * 4.3,
                                    ),
                                    SizedBox(
                                      width: SizeConfig.screenWidth * 0.03,
                                    ),
                                    Text(
                                      widget.orderData['pickup-time']
                                          .toString(),
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(86, 93, 145, 1.0),
                                        fontSize:
                                            SizeConfig.textMultiplier * 3.1,
                                      ),
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: SizeConfig.screenHeight * 0.02),
                            Divider(),
                            SizedBox(height: SizeConfig.screenHeight * 0.02),
                            DetailCard(
                              name: 'Siddharth Kumar'.toString(),
                              address: widget.orderData['pick-add'].toString(),
                              orderData: widget.orderData,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              spreadRadius: 0.0,
                              blurRadius: 6,
                              offset: Offset(3, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Order Delivery Time',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                    fontSize: SizeConfig.textMultiplier * 2.7,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.lock_clock,
                                      color: Color.fromRGBO(86, 93, 145, 1.0),
                                      size: SizeConfig.textMultiplier * 4.3,
                                    ),
                                    SizedBox(
                                      width: SizeConfig.screenWidth * 0.03,
                                    ),
                                    Text(
                                      widget.orderData['deliver-time']
                                          .toString(),
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(86, 93, 145, 1.0),
                                        fontSize:
                                            SizeConfig.textMultiplier * 3.1,
                                      ),
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(),
                            SizedBox(height: 10),
                            DetailCard(
                              name: 'Chetan Nager'.toString(),
                              address:
                                  widget.orderData['delivery-add'].toString(),
                              orderData: widget.orderData,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              spreadRadius: 0.0,
                              blurRadius: 6,
                              offset: Offset(3, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Payment'.toString(),
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(86, 93, 145, 1.0),
                                fontSize: SizeConfig.textMultiplier * 4.0,
                              ),
                            ),
                            Divider(),
                            SizedBox(height: SizeConfig.screenHeight * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Your Commission'.toString(),
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
                                    fontSize: SizeConfig.textMultiplier * 2.8,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Payment Mode'.toString(),
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: SizeConfig.textMultiplier * 2.8,
                                  ),
                                ),
                                Text(
                                  'Cash On Delivery'.toString(),
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.green,
                                    fontSize: SizeConfig.textMultiplier * 2.75,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Payment Status'.toString(),
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: SizeConfig.textMultiplier * 2.8,
                                  ),
                                ),
                                Text(
                                  'Not Paid'.toString(),
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.red,
                                    fontSize: SizeConfig.textMultiplier * 2.7,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
        },
      );
    });
  }
}
