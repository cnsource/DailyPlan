import 'package:ert/components/blur_box.dart';
import 'package:ert/page/AppScaffold.dart';
import 'package:ert/page/timeline/time-line-body.dart';
import 'package:flutter/material.dart';

import '../AppHeaderContainer.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TimelinePageState();
  }
}

class _TimelinePageState extends State<TimelinePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [TimelineBody(), BlurBox(), AppHeader(title: "今日时间轴")],
    );
  }
}
