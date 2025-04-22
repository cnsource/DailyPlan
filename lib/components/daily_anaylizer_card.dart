import 'package:ert/components/text-progress-indicator.dart';
import 'package:flutter/material.dart';

import 'capsule_item.dart';

class DailyAnalyzerCard extends StatefulWidget {
  const DailyAnalyzerCard({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DailyAnalyzerCardState();
  }
}

class _DailyAnalyzerCardState extends State<DailyAnalyzerCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: Color(0xffe5e5e5)),
          // 添加内边距
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Icon(Icons.signal_cellular_alt, size: 20),
                  SizedBox(width: 8),
                  Text(
                    "今日任务分析",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: 2),
                Text(
                  "任务类型分布",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                Text(
                  "共 5 项",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        CapsuleItem(
                          dotColor: Colors.green,
                          label: "工作",
                          count: 4,
                        ),
                        CapsuleItem(
                          dotColor: Colors.blue,
                          label: "学习",
                          count: 3,
                        ),
                        CapsuleItem(
                          dotColor: Colors.amber,
                          label: "生活",
                          count: 5,
                        ),
                        CapsuleItem(
                          dotColor: Colors.yellow,
                          label: "生活",
                          count: 6,
                        ),
                        CapsuleItem(
                          dotColor: Colors.yellow,
                          label: "生活",
                          count: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                spacing: 8,
                children: [
                  TextProgressIndicator(),
                  TextProgressIndicator(),
                  TextProgressIndicator(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
