import 'package:flutter/material.dart';

List<BoxShadow>? boxShadow = [
  BoxShadow(
    color: Colors.black.withOpacity(0.2),
    blurRadius: 10,
    offset: const Offset(0, 10),
  ),
];

Widget buildCircularShimmer() {
  return Container(
    width: 100,
    height: 100,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
    ),
  );
}

Widget buildSquareShimmer({double? width, double? height, Color? color = Colors.white}) {
  return Container(
    width: width ?? 100,
    height: height ?? 32,
    color:color,
  );
}
