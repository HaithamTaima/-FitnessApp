import 'package:flutter/material.dart';

class OutBoardingIndicator extends StatelessWidget {
  final double marginEnd;
  final bool selected;

  OutBoardingIndicator({
    this.marginEnd = 0,  required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 10,
      decoration: BoxDecoration(
        color: selected ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsetsDirectional.only(end: marginEnd),
    );
  }
}
