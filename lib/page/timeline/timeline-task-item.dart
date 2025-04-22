import 'package:ert/components/text-capsule.dart';
import 'package:flutter/material.dart';

import '../../components/task-status.dart';

class TimeLineTaskItem extends StatefulWidget {
  const TimeLineTaskItem({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TimeLineTaskItemState();
  }
}

class _TimeLineTaskItemState extends State<TimeLineTaskItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: IntrinsicHeight(
        // 使用 IntrinsicHeight 强制子组件高度一致
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch, // 使 Row 的子组件充满父容器的高度
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border(
                      top: BorderSide(width: 1, color: Color(0xffe5e5e5)),
                      right: BorderSide(width: 1, color: Color(0xffe5e5e5)),
                      bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                  ),
                  padding: EdgeInsets.only(left: 4),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          spacing: 8,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 6,
                              children: [
                                TextCapsule(
                                  backgroundColor: Colors.grey[200],
                                  text: "4月12日",
                                  textColor: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  height: 26,
                                ),
                                Text(
                                  "08:00 - 09:30",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            Row(
                              spacing: 16,
                              children: [
                                Icon(
                                  Icons.task_alt,
                                  size: 18,
                                  color: Color(0xff22c55e),
                                ),
                                Icon(Icons.keyboard_arrow_down, size: 26),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            children: [
                              SizedBox(width: 4,),
                              Text(
                                "项目启动会议",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            SizedBox(width: 4,),
                            TaskStatus(dotColor: Colors.blue, label: "进行中",fontSize: 18,)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
