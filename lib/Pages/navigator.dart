import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'orderDetailInfoTab.dart';
import 'orderDetailTab.dart';

class NavigationPage extends StatefulWidget {
  final Map<dynamic, String> orderData;
  NavigationPage({this.orderData});

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  GlobalKey key = GlobalKey();
  String text = 'Ready To Pickup';
  Color buttonColor = Colors.green.shade400;
  bool isReadyToPickup = true;
  bool isPickedUp = false;
  bool isdelivered = false;
  bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SlidingUpPanel(
        minHeight: MediaQuery.of(context).size.height * 0.112,
        maxHeight: MediaQuery.of(context).size.height * 0.80,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        panel: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                automaticallyImplyLeading: false,
                leading: Icon(
                  Icons.arrow_upward_outlined,
                  color: Colors.white,
                  size: 28,
                ),
                backgroundColor: Color.fromRGBO(86, 93, 145, 1.0),
                elevation: 0.5,
                title: Text(
                  '',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                  ),
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      Icons.refresh_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ],
                bottom: PreferredSize(
                  preferredSize: Size(
                    MediaQuery.of(context).size.width,
                    50,
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
                            (isReadyToPickup == false && isPickedUp == false)) {
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
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/map.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 27,
              left: 10,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
