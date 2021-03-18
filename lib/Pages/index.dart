import 'package:flutter/material.dart';
import 'package:mdhobi_delivery/Components/tabbar.dart';
import 'package:mdhobi_delivery/Config/size_config.dart';
import 'package:mdhobi_delivery/Pages/activeordertab.dart';
import 'package:mdhobi_delivery/Pages/newordertab.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color.fromRGBO(86, 93, 145, 1.0),
              elevation: 0.5,
              title: Text(
                'Delivery',
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
                    size: SizeConfig.textMultiplier * 3.5,
                  ),
                  onPressed: () {},
                ),
              ],
              bottom: PreferredSize(
                child: BottomTabBar(),
                preferredSize: Size(
                  MediaQuery.of(context).size.width,
                  SizeConfig.screenHeight * 0.14,
                ),
              ),
            ),
            body: TabBarView(
              children: [
                NewOrderTab(),
                ActiveOrderTab(),
              ],
            ),
          ),
        );
      });
    });
  }
}
