import 'dart:ui';

import 'package:flutter/material.dart';

class BlurBox extends StatelessWidget {
  const BlurBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Stack(
        children: [
          // 模糊层
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 25, sigmaY: 8),
              child: Container(
                color: Colors.white.withAlpha(90),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
