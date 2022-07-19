import 'package:flutter/material.dart';
import 'package:yellowcabweb/helpers/responsiveness.dart';
import 'package:yellowcabweb/widgets/horizontal_menu_item.dart';
import 'package:yellowcabweb/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isSmallScreen(context))
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    else
      return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
