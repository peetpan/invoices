import 'package:flutter/material.dart';
import 'all.dart' as all;
import 'paid.dart' as paid;
import 'unpaid.dart' as unpaid;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Invoices());
}

class Invoices extends StatefulWidget {
  @override
  _InvoicesState createState() => _InvoicesState();
}

class _InvoicesState extends State<Invoices>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  Color mainBlue = Color(0xff2699FB);
  Color mainBluex = Color(0xff2699FB);
//  final List<Widget> _children = [
//
//  ];
  TextStyle navigationText = TextStyle(
    fontFamily: "NunitoSans",
    fontSize: 16,
  );

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff2699FB),
          leading: IconButton(
              icon: Icon(
                Icons.menu,
                size: 30,
              ),
              onPressed: () {
                print('Menu icon pressed');
              }),
          title: Center(
            child: Text(
              'Invoices',
              style: TextStyle(fontSize: 32, fontFamily: 'NunitoSans'),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              onPressed: () {
                print('search icon pressed');
              },
            ),
          ],
          bottom: TabBar(controller: controller, tabs: <Widget>[
            Tab(
              child: Expanded(
                child: Text(
                  'ALL',
                  style: TextStyle(fontSize: 21),
                ),
              ),
            ),
            Tab(
              child: Expanded(
                child: Text(
                  'UNPAID',
                  style: TextStyle(fontSize: 21),
                ),
              ),
            ),
            Tab(
              child: Expanded(
                child: Text(
                  'PAID',
                  style: TextStyle(fontSize: 21),
                ),
              ),
            ),
          ]),
        ),
        body: TabBarView(
            controller: controller,
            children: <Widget>[all.All(), unpaid.Unpaid(), paid.Paid()]),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: mainBluex,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.fileInvoiceDollar),
              title: Text(
                'Invoices',
                style: navigationText,
              ),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.truck),
              title: Text(
                'Addresses',
                style: navigationText,
              ),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.shoppingBag),
              title: Text(
                'Purchases',
                style: navigationText,
              ),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.chartLine),
              title: Text(
                'Reports',
                style: navigationText,
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Color(0xff2699FB),
        ),
      ),
    );
  }
}
