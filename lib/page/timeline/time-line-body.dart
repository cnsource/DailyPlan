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
      useSafeArea: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero, // 设置无圆角
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildOption(Icons.image, '图片添加', () {
                    // 处理图片添加逻辑
                    Navigator.pop(context);
                  }),
                  _buildOption(Icons.content_paste, '剪贴板', () {
                    // 处理剪贴板逻辑
                    Navigator.pop(context);
                  }),
                  _buildOption(Icons.keyboard, '文本输入', () {
                    // 处理文本输入逻辑
                    Navigator.pop(context);
                  }),
                  _buildOption(Icons.mic, '语音添加', () {
                    // 处理语音添加逻辑
                    Navigator.pop(context);
                  }),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildOption(IconData icon, String label, VoidCallback onTap) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[200],
            child: Icon(icon),
          ),
        ),
        const SizedBox(height: 5),
        Text(label),
      ],
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
