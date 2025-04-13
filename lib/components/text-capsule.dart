import 'package:flutter/material.dart';

class TextCapsule extends StatelessWidget {
  final Color? backgroundColor; // 更清晰的参数名
  final String text;
  final Color textColor; // 添加文本颜色参数，带默认值
  final double borderRadius;
  final double height; // 添加圆角半径参数，带默认值
  final double fontSize; // 字体大小
  final FontWeight fontWeight; // 字体大小

  const TextCapsule({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.height,
    required this.fontSize,
    required this.fontWeight,
    this.textColor = Colors.white, // 默认白色文本（适合大多数深色背景）
    this.borderRadius = 50, // 高度26对应半圆角半径13
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // 移除固定高度，改用自适应高度
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 12), // 对称内边距，视觉更平衡
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius), // 圆角实现
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor, // 使用传入的文本颜色
        ),
      ),
    );
  }
}