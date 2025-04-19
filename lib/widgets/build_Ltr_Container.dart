import 'package:flutter/material.dart';

class LtrContainer extends StatelessWidget {
  final List<Widget> children;
  final double opacity;
  final Color borderColor;
  final double borderWidth;

  const LtrContainer({
    super.key,
    required this.children,
    this.opacity = 0.7,
    this.borderColor = const Color(0xffc2c2c2),
    this.borderWidth = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(opacity),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(children: children),
      ),
    );
  }
}