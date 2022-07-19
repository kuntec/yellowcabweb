import 'package:flutter/material.dart';
import 'package:yellowcabweb/constants/style.dart';
import 'package:yellowcabweb/helpers/responsiveness.dart';
import 'package:yellowcabweb/routing/routes.dart';
import 'package:yellowcabweb/widgets/custom_text.dart';
import 'package:yellowcabweb/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/yci.png"),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Dash",
                        size: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: _width / 48),
                  ],
                ),
                SizedBox(height: 40),
                Divider(
                  color: lightGrey.withOpacity(.1),
                ),
              ],
            ),
          Column(mainAxisSize: MainAxisSize.min, children: <SideMenuItem>[
            // sideMenuItems.map((itemName) => SideMenuItem(
            //     itemName:
            //         itemName == AuthenticationPageRoute ? 'Log Out' : itemName,
            //     onTap: () {})),
          ])
        ],
      ),
    );
  }
}
