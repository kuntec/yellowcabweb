import 'package:flutter/material.dart';
import 'package:yellowcabweb/helpers/responsiveness.dart';
import 'package:yellowcabweb/widgets/large_screen.dart';
import 'package:yellowcabweb/widgets/medium_screen.dart';
import 'package:yellowcabweb/widgets/small_screen.dart';
import 'package:yellowcabweb/widgets/top_nav.dart';

class SileLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          mediumScreen: MediumScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
