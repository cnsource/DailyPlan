import 'package:ert/components/daily_anaylizer_card.dart';
import 'package:ert/page/timeline/timeline-task-item.dart';
import 'package:flutter/material.dart';

class TimelineBody extends StatefulWidget {
  const TimelineBody({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TimelineBodyState();
  }
}

class _TimelineBodyState extends State<TimelineBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 12,
        children: [
          Container(height: 55),
          DailyAnalyzerCard(),
          ...List.generate(50, (index) => TimeLineTaskItem()),
        ],
      ),
    );
  }
}
