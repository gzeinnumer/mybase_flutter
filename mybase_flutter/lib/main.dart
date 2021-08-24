import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:mybase_flutter/_parcial/button/BtnPri.dart';
import 'package:mybase_flutter/_parcial/button/badge/BtnBadgePri.dart';
import 'package:mybase_flutter/_parcial/image/ImageView.dart';
import 'package:mybase_flutter/_parcial/text/TextViewHeader.dart';

import '_parcial/button/BtnSec.dart';
import '_parcial/button/BtnSuc.dart';
import '_parcial/image/ImageViewAvatar.dart';
import '_parcial/image/ImageViewOverLay.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  late List<String> list = [
    "Flutter",
    "React",
    "Ionic",
    "Xamarin",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        leading: GFIconButton(
          icon: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () {},
          type: GFButtonType.transparent,
        ),
        title: Text("GF Appbar"),
        actions: <Widget>[
          GFIconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {},
            type: GFButtonType.transparent,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            BtnSuc(
              text: "Success",
              onPressed: _incrementCounter,
            ),
            // BtnSec(
            //   text: "Secondary",
            //   onPressed: _incrementCounter,
            // ),
            // BtnPri(
            //   text: "Primary",
            //   onPressed: _incrementCounter,
            // ),
            // BtnBadgePri(
            //   text: "Count",
            //   icon: '$_counter',
            // ),
            // // ImageViewAvatar(url: "https://avatars.githubusercontent.com/u/45892408?v=4"),
            // // ImageView(url: "https://avatars.githubusercontent.com/u/45892408?v=4"),
            // // ImageViewOverLay(url: "https://avatars.githubusercontent.com/u/45892408?v=4"),
            // Center(child: TextViewHeader(text: "GZeinNumer")),
            // GFAccordion(
            //   title: 'GF Accordion',
            //   content:
            //       'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
            // ),
            // GFAccordion(
            //   title: 'GF Accordion',
            //   content:
            //       'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
            //   collapsedIcon: Icon(Icons.add),
            //   expandedIcon: Icon(Icons.minimize),
            // ),
            // GFAccordion(
            //   title: 'GF Accordion',
            //   content:
            //       'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
            //   collapsedIcon: Text('Show'),
            //   expandedIcon: Text('Hide'),
            // ),
            // GFSearchBar(
            //   searchList: list,
            //   searchQueryBuilder: (query, list) {
            //     return list
            //         .where((item) => item
            //             .toString()
            //             .toLowerCase()
            //             .contains(query.toLowerCase()))
            //         .toList();
            //   },
            //   overlaySearchListItemBuilder: (item) {
            //     return Container(
            //       padding: const EdgeInsets.all(8),
            //       child: Text(
            //         item.toString(),
            //         style: const TextStyle(fontSize: 18),
            //       ),
            //     );
            //   },
            //   onItemSelected: (item) {
            //     setState(() {
            //       print('$item');
            //     });
            //   },
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // T
      // his trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
