import 'package:ert/components/blur_box.dart';
import 'package:ert/page/AppScaffold.dart';
import 'package:ert/page/timeline/time-line-body.dart';
import 'package:flutter/material.dart';

import '../AppHeaderContainer.dart';

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
    return AppScaffold(
      body: Stack(
        children: [TimelineBody(), BlurBox(), AppHeader(title: "今日时间轴")],
      )
    );
  }
}
