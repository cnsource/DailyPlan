import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';

class AppScaffold extends StatefulWidget {
  final Widget body;

  const AppScaffold({super.key, required this.body});

  @override
  State<StatefulWidget> createState() {
    return _AppScaffold(body);
  }
}

class _AppScaffold extends State<AppScaffold> {
  final Widget body;

  _AppScaffold(this.body);

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
