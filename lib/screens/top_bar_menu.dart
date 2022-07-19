import 'package:flutter/material.dart';
import 'package:yellowcabweb/constants/constants.dart';
import 'package:yellowcabweb/screens/about.dart';

class TopBarMenu extends StatefulWidget {
  const TopBarMenu({Key? key}) : super(key: key);

  @override
  State<TopBarMenu> createState() => _TopBarMenuState();
}

class _TopBarMenuState extends State<TopBarMenu> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: kBaseColor,
      child: Padding(
        padding: EdgeInsets.all(1),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Row(
              children: [
                SizedBox(
                  height: 160,
                  width: 160,
                  child: Image.asset(
                    'assets/images/1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: screenSize.width / 15),
                menuItem("Home", 0, () {}),
                SizedBox(width: screenSize.width / 25),
                menuItem("About", 1, () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                }),
                SizedBox(width: screenSize.width / 25),
                menuItem("Contact", 2, () {}),
                SizedBox(width: screenSize.width / 3),
                // Text("Call +91 - 8141341341"),
                // SizedBox(width: screenSize.width / 25),
                SizedBox(
                  height: 50,
                  width: 160,
                  child: Image.asset(
                    'assets/images/playstore.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }

  Widget menuItem(String title, int index, dynamic callback) {
    return InkWell(
      onHover: (value) {
        setState(() {
          value ? _isHovering[index] = true : _isHovering[index] = false;
        });
        print("Hovering $index");
      },
      onTap: callback,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16,
                color: _isHovering[index] ? Colors.red : Colors.green,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Visibility(
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true,
              visible: _isHovering[index],
              child: Container(
                height: 2,
                width: 20,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
