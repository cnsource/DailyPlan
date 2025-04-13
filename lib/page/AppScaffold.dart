import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;

  const AppScaffold({super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefefef),
      body: SafeArea(
        child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(child: body),
                // 底部区域
                BottomNavBar(),
              ],
            ),
        ),
      ),
    );
  }

}