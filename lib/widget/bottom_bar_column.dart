import 'package:flutter/material.dart';

class BottomBarColumn extends StatelessWidget {
  final String heading;
  final String s1;
  final String s2;
  final String s3;
  final dest1;
  final dest2;
  final dest3;

  BottomBarColumn({
    required this.heading,
    required this.s1,
    required this.s2,
    required this.s3,
    this.dest1,
    this.dest2,
    this.dest3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          myInkWell(s1, dest1, 0, context),
          /*Text(
            s1,
            style: TextStyle(
              color: Colors.blueGrey[100],
              fontSize: 14,
            ),
            
          ),*/
          const SizedBox(height: 5),
          myInkWell(s2, dest2, 1, context),
          const SizedBox(height: 5),
          myInkWell(s3, dest3, 2, context),
        ],
      ),
    );
  }

  Widget myInkWell(String text, nav, int ind, context) {
    final List _isHovering = [false, false, false, false, false, false];
    return InkWell(
      /*onHover: (value) {
        setState(() {
          _isHovering[ind] = value;
        });
      },*/
      onTap: () {
        nav(context);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(
              color: _isHovering[ind] ? Colors.blue.shade200 : Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          // For showing an underline on hover
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: _isHovering[ind],
            child: Container(
              height: 2,
              width: 20,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
