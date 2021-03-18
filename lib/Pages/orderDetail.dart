import 'package:flutter/material.dart';
import 'package:mdhobi_delivery/Config/size_config.dart';
import 'package:mdhobi_delivery/Pages/orderDetailInfoTab.dart';
import 'package:mdhobi_delivery/Pages/orderDetailTab.dart';

class OrderDetail extends StatefulWidget {
  final Map<dynamic, String> orderData;
  OrderDetail({this.orderData});

  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  GlobalKey key = GlobalKey();
  String text = 'Ready To Pickup';
  Color buttonColor = Colors.green.shade400;
  bool isReadyToPickup = true;
  bool isPickedUp = false;
  bool isdelivered = false;
  bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return DefaultTabController(
          length: 2,
          child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  backgroundColor: Color.fromRGBO(86, 93, 145, 1.0),
                  elevation: 0.5,
                  title: Text(
                    'Task id : ' + widget.orderData['taskid'],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      fontSize: SizeConfig.textMultiplier * 2.5,
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size(
                      MediaQuery.of(context).size.width,
                      SizeConfig.screenHeight * 0.065,
                    ),
                    child: Container(
                      color: Colors.white,
                      child: TabBar(
                        indicator: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.5,
                              color: Color.fromRGBO(86, 93, 145, 1.0),
                            ),
                          ),
                        ),
                        indicatorColor: Color.fromRGBO(86, 93, 145, 1.0),
                        tabs: [
                          Tab(
                            text: 'Info',
                          ),
                          Tab(
                            text: 'Order Detail',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                body: TabBarView(
                  children: [
                    OrderDetailInfoTab(
                      orderData: widget.orderData,
                      isEmpty: isEmpty,
                    ),
                    OrderDetailTab(),
                  ],
                ),
                bottomNavigationBar: isEmpty
                    ? SizedBox()
                    : RaisedButton(
                        color: buttonColor,
                        onPressed: () {
                          if (isReadyToPickup == true &&
                              (isPickedUp == false && isdelivered == false)) {
                            setState(
                              () {
                                isReadyToPickup = false;
                                isPickedUp = true;
                                isdelivered = false;
                                text = 'Pick Up';
                                buttonColor = Colors.orangeAccent;
                                print('Hello');
                              },
                            );
                          } else if (isPickedUp == true &&
                              (isReadyToPickup == false &&
                                  isdelivered == false)) {
                            setState(
                              () {
                                isdelivered = true;
                                isReadyToPickup = false;
                                isPickedUp = false;
                                text = 'Delivered Cloth';
                                buttonColor = Colors.deepOrange;
                                print('Hi');
                              },
                            );
                          } else if (isdelivered == true &&
                              (isReadyToPickup == false &&
                                  isPickedUp == false)) {
                            setState(
                              () {
                                isdelivered = false;
                                isReadyToPickup = false;
                                isPickedUp = false;
                                isEmpty = true;
                                text = 'Delivered Cloth';
                                buttonColor = Colors.deepOrange;
                                print('Hi');
                              },
                            );
                          }
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: Center(
                            child: Text(
                              text.toString(),
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5,
                                color: Colors.white,
                                fontSize: SizeConfig.textMultiplier * 2.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
              );
            },
          ),
        );
      });
    });
  }
}
