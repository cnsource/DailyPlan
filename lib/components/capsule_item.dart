import 'package:flutter/material.dart';

class CapsuleItem extends StatelessWidget {
  final Color dotColor;
  final String label;
  final int count;

  const CapsuleItem({
    super.key,
    required this.dotColor,
    required this.label,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      padding: EdgeInsets.only(top: 1,bottom: 1, left: 8, right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14), // 胶囊圆角
        boxShadow: [
          BoxShadow(color: Colors.black.withAlpha(40), blurRadius: 4),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 圆点
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(shape: BoxShape.circle, color: dotColor),
          ),
          const SizedBox(width: 8),
          // 文本内容
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$label($count)',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
