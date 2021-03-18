import 'package:flutter/material.dart';
import 'package:mdhobi_delivery/Config/size_config.dart';
import 'package:mdhobi_delivery/Pages/account.dart';
import 'package:mdhobi_delivery/Pages/index.dart';
import 'package:mdhobi_delivery/Pages/wallet.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    IndexPage(),
    WalletPage(),
    AccountPage(),
  ];

  final List<BottomNavigationBarItem> navItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home_outlined,
      ),
      label: 'Hello',
    ),
    BottomNavigationBarItem(
      label: 'Hello',
      icon: Icon(
        Icons.wallet_travel_outlined,
      ),
    ),
    BottomNavigationBarItem(
      label: 'Hello',
      icon: Icon(
        Icons.person_outlined,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return Scaffold(
          body: pages[selectedIndex],
          extendBody: false,
          bottomNavigationBar: Container(
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.15,
                  right: SizeConfig.screenWidth * 0.15,
                  bottom: SizeConfig.screenWidth * 0.01),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                  currentIndex: selectedIndex,
                  onTap: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  backgroundColor: Color.fromRGBO(86, 93, 145, 1.0),
                  selectedLabelStyle: TextStyle(
                    fontSize: 0,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 0,
                  ),
                  selectedIconTheme: IconThemeData(
                    color: Colors.white,
                    size: SizeConfig.textMultiplier * 4.2,
                  ),
                  unselectedIconTheme: IconThemeData(
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    size: SizeConfig.textMultiplier * 4.0,
                  ),
                  items: navItems,
                ),
              ),
            ),
          ),
        );
      });
    });
  }
}
