import 'package:flutter/material.dart';
import 'package:mdhobi_delivery/PageRouterConfig/fade-navigate-routing.dart';
import 'package:mdhobi_delivery/Pages/navigator.dart';

class DetailCard extends StatelessWidget {
  final String name;
  final String address;
  final Map<dynamic, String> orderData;
  DetailCard({this.name, this.address, this.orderData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.person_outlined,
                  size: 25,
                  color: Color.fromRGBO(86, 93, 145, 1.0),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  name.toString(),
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(86, 93, 145, 1.0),
                    fontSize: 16.5,
                  ),
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(40),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.call_outlined,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_history,
                  color: Color.fromRGBO(86, 93, 145, 1.0),
                  size: 21,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 200,
                  child: Text(
                    address.toString(),
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(86, 93, 145, 1.0),
                      fontSize: 15.5,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            RotatedBox(
              quarterTurns: 5,
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(86, 93, 145, 1.0),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.navigation_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      FadeRoute(
                        page: NavigationPage(
                          orderData: orderData,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
