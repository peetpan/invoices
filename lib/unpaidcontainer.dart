import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UnpaidContainer extends StatelessWidget {
  UnpaidContainer(
      {this.customer_name, this.invoice_name, this.price, this.invoice_date});
  String customer_name;
  String invoice_name;
  int price;
  DateTime invoice_date;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.3, color: Colors.grey),
        ),
      ),
      padding: EdgeInsets.all(08),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$customer_name',
                    style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '$invoice_name',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'NunitoSans',
                      color: Color(0xff707070),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Text(
                      'Unpaid',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'NunitoSans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '₹ $price',
                    style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '$invoice_date',
                    style: TextStyle(
                      fontFamily: 'NunitoSans',
                      color: Color(0xff707070),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidEdit,
                    color: Color(0xff2699FB),
                    size: 20,
                  ),
                ])
          ]),
    );
  }
}
