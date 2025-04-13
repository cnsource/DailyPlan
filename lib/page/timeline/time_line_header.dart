import 'package:flutter/material.dart';

class TimelineHeader extends StatefulWidget {
  const TimelineHeader({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TimelineHeaderState();
  }
}

class _TimelineHeaderState extends State<TimelineHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 1,
                  color: Color(0xfff1f1f1)
              ),
          ),
      ),
      child: Row(
        children: [
          Text("今日时间轴", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700)),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 16,
            children: const [
              Icon(Icons.notifications, size: 24, color: Colors.blueAccent,),
              Icon(Icons.search, size: 24, color: Colors.blueAccent,),
            ],
          ),
        ],
      ),
    );
  }
}
