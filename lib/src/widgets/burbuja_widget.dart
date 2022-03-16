import 'package:flutter/material.dart';

class BurbujaWidget extends StatelessWidget {
  final String label;
  final Color labelColor;
  final double labelSize;
  final double radius;
  final Color color;
  final bool selected;

  const BurbujaWidget({
    Key? key,
    required this.label,
    this.radius = 45,
    this.color = Colors.blue,
    this.selected = false,
    this.labelColor = Colors.white,
    this.labelSize = 20.0,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      child: Center(
        child: Text(
          label,
          style: TextStyle(color: labelColor, fontSize: labelSize),
        ),
      ),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: selected ? Colors.white : color,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(1, 1), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
