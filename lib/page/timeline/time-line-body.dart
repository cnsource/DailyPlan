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
  void _showOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('选项 1'),
              onTap: () {
                // 处理选项 1 的逻辑
                Navigator.pop(context); // 关闭底部弹窗
                print('选项 1 被选中');
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('选项 2'),
              onTap: () {
                // 处理选项 2 的逻辑
                Navigator.pop(context); // 关闭底部弹窗
                print('选项 2 被选中');
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('选项 3'),
              onTap: () {
                // 处理选项 3 的逻辑
                Navigator.pop(context); // 关闭底部弹窗
                print('选项 3 被选中');
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              spacing: 12,
              children: [
                Container(height: 55),
                DailyAnalyzerCard(),
                ...List.generate(50, (index) => TimeLineTaskItem()),
                SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            right: 30,
            bottom: 50,
            child: FloatingActionButton(
              elevation: 2,
              backgroundColor: Colors.white,
              shape: CircleBorder(),
              splashColor: Colors.blue.shade50,
              onPressed: () => _showOptions(context),
              child: const Icon(Icons.add, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
