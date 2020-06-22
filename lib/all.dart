import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'unpaidcontainer.dart';
import 'paidcontainer.dart';

class All extends StatefulWidget {
  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        PaidContainer(
          customer_name: 'Peetamber',
          invoice_name: 'myinvoice',
          price: 500,
        ),
        UnpaidContainer(
          customer_name: 'Amit',
          invoice_name: 'grocery',
          price: 325,
        )
      ],
    );
  }
}
