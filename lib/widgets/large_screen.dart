import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    double _scrollPosition = 0;
    double _opacity = 0;

    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      // ),
      // body: Row(
      //   children: [
      //     Expanded(
      //       flex: 1,
      //       child: Container(
      //         color: Colors.red,
      //         // child: Text("Hello world"),
      //       ),
      //     ),
      //     Expanded(
      //       flex: 5,
      //       child: Container(
      //         color: Colors.blue,
      //       ),
      //     ),
      //   ],
      // ),
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.yellow,
        child: Text("Large"),
      ),
    );
  }
}
