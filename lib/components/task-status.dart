import 'package:flutter/cupertino.dart';

class TaskStatus extends StatelessWidget {
  final String label;
  final Color dotColor;
  final double fontSize;
  final FontWeight? fontWeight;

  const TaskStatus({
    super.key,
    required this.label,
    required this.dotColor,
    required this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
              label,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
      ],
    );
  }

}