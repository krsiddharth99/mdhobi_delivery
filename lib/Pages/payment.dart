import 'package:flutter/material.dart';
import 'package:mdhobi_delivery/Config/size_config.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String _currentValue = "";
  List<Map<String, dynamic>> radioData = [
    {
      'title': 'card-1',
      'card-number': '7890-****-9087',
      'value': '1',
    },
    {
      'title': 'card-2',
      'card-number': '7890-****-9087',
      'value': '2',
    },
    {
      'title': 'card-2',
      'card-number': '7890-****-9087',
      'value': '2',
    },
    {
      'title': 'card-2',
      'card-number': '7890-****-9087',
      'value': '2',
    },
    {
      'title': 'card-2',
      'card-number': '7890-****-9087',
      'value': '2',
    },
    {
      'title': 'card-2',
      'card-number': '7890-****-9087',
      'value': '2',
    },
    {
      'title': 'card-2',
      'card-number': '7890-****-9087',
      'value': '2',
    },
    {
      'title': 'card-2',
      'card-number': '7890-****-9087',
      'value': '2',
    },
    {
      'title': 'card-2',
      'card-number': '7890-****-9087',
      'value': '2',
    },
    {
      'title': 'card-2',
      'card-number': '7890-****-9087',
      'value': '2',
    },
    {
      'title': 'card-2',
      'card-number': '7890-****-9087',
      'value': '2',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(builder: (context, orientation) {
          SizeConfig().init(constraints, orientation);
          return Scaffold(
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.95),
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(86, 93, 145, 1.0),
              elevation: 0.5,
              title: Text(
                'Payment',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat',
                  fontSize: SizeConfig.textMultiplier * 2.8,
                ),
              ),
            ),
            body: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.97,
                    height: MediaQuery.of(context).size.height * 0.82,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: radioData
                            .map((data) => RadioListTile(
                                  value: data['value'],
                                  title: Text(data['title'].toString()),
                                  subtitle:
                                      Text(data['card-number'].toString()),
                                  groupValue: _currentValue,
                                  onChanged: (value) {
                                    setState(() {
                                      _currentValue = value;
                                    });
                                  },
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, -1),
                        )
                      ],
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.5,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.screenWidth * 0.014,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.send_rounded),
                            onPressed: () {},
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: 'Enter Amount',
                        hintStyle: TextStyle(
                          fontSize: SizeConfig.textMultiplier * 2.5,
                          fontWeight: FontWeight.w500,
                        ),
                        contentPadding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.04,
                            top: SizeConfig.screenWidth * 0.05),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
      },
    );
  }
}
