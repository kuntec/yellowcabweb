import 'package:flutter/material.dart';
import 'package:yellowcabweb/screens/top_bar_menu.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 90),
        child: TopBarMenu(),
      ),
      body: Container(
        child: Text("About"),
      ),
    );
  }
}
