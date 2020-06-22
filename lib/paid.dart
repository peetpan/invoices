import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'paidcontainer.dart';

class Paid extends StatefulWidget {
  @override
  _PaidState createState() => _PaidState();
}

class _PaidState extends State<Paid> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        PaidContainer(
          customer_name: 'Peetamber',
          invoice_name: 'myinvoice',
          price: 500,
        )
      ],
    );
  }
}
