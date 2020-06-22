import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'unpaidcontainer.dart';

class Unpaid extends StatefulWidget {
  @override
  _UnpaidState createState() => _UnpaidState();
}

class _UnpaidState extends State<Unpaid> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        UnpaidContainer(
          customer_name: 'Amit',
          invoice_name: 'grocery',
          price: 325,
        )
      ],
    );
  }
}
