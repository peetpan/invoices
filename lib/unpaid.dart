import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Unpaid extends StatefulWidget {
  @override
  _UnpaidState createState() => _UnpaidState();
}

class _UnpaidState extends State<Unpaid> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
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
                        'Person 1',
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
                        'Invoice 1',
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
                        '₹ 241.00',
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
                        'June 6,2020',
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
        ),
      ],
    );
  }
}
