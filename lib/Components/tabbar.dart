import 'package:flutter/material.dart';
import 'package:mdhobi_delivery/Config/size_config.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                left: SizeConfig.screenWidth * 0.045,
                top: SizeConfig.screenWidth * 0.06,
                bottom: SizeConfig.screenWidth * 0.035,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    color: Color.fromRGBO(86, 93, 145, 1.0),
                    size: 16,
                  ),
                  SizedBox(
                    width: SizeConfig.screenWidth * 0.025,
                  ),
                  Text(
                    '13 Aug 2021',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(86, 93, 145, 1.0),
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
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
                    text: 'New Order',
                  ),
                  Tab(
                    text: 'Active Order',
                  ),
                ],
              ),
            ),
          ],
        );
      });
    });
  }
}
