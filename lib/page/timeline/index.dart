import 'dart:ui';

import 'package:ert/components/blur_box.dart';
import 'package:ert/page/timeline/time_line_header.dart';
import 'package:ert/page/timeline/time_line_body.dart';
import 'package:flutter/material.dart';

import '../bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefefef),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    TimelineBody(),
                    BlurBox(),
                    TimelineHeader()
                  ],
                ),
                // 顶部区域
              ),

              // 底部区域
              BottomNavBar()
            ],
          ),
        ),
      ),
    );
  }
}
