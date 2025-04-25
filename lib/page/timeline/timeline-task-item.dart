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
  bool _isSelected = false;
  void _handleTaskAction(String? value) {
    if (value != null) {
      switch (value) {
        case 'start':
          // 处理开始任务逻辑
          print('开始任务');
          break;
        case 'complete':
          // 处理完成任务逻辑
          print('完成任务');
          break;
        case 'cancel':
          // 处理取消任务逻辑
          print('取消任务');
          break;
        case 'reschedule':
          // 处理重新排期逻辑
          print('重新排期');
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    final GlobalKey<PopupMenuButtonState<String>> popupMenuKey = GlobalKey();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border(
              top: BorderSide(width: 1, color: const Color(0xffe5e5e5)),
              right: BorderSide(width: 1, color: const Color(0xffe5e5e5)),
              bottom: BorderSide(width: 1, color: const Color(0xffe5e5e5)),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(6)),
          ),
          padding: const EdgeInsets.only(left: 4),
          child: Container(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.horizontal(left: Radius.circular(2), right: Radius.circular(5)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        TextCapsule(
                          backgroundColor: Colors.grey[200],
                          text: "4月12日",
                          textColor: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 26,
                        ),
                        SizedBox(width: 8,),
                        const Text(
                          "08:00 - 09:30",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        PopupMenuButton<String>(
                          key: popupMenuKey,
                          onSelected: _handleTaskAction,
                          offset: Offset(20, 44),
                          color: Colors.white,
                          constraints: BoxConstraints(maxWidth: 140),
                          shadowColor: Colors.grey,
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem(
                                value: 'start',
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.timer_outlined,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 15),
                                    const Text(
                                      '开始任务',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: 'complete',
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check_circle_outline,
                                      color: Colors.green,
                                    ),
                                    const Expanded(child: SizedBox()),
                                    const Text(
                                      '完成任务',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(width: 20),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: 'complete',
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.error_outline_outlined,
                                      color: Colors.yellow.shade800,
                                    ),
                                    const Expanded(child: SizedBox()),
                                    const Text(
                                      '临时有变',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(width: 20),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: 'cancel',
                                child: Row(
                                  children: [
                                    Icon(Icons.cancel_outlined, color: Colors.black54),
                                    const SizedBox(width: 15),
                                    const Text(
                                      '取消任务',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: 'reschedule',
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today_outlined,
                                      color: Colors.orange.shade800,
                                    ),
                                    const SizedBox(width: 15),
                                    const Text(
                                      '重新排期',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ];
                          },
                          child: IconButton(
                            icon: const Icon(
                              Icons.task_alt,
                              size: 20,
                              color: Colors.green,
                            ),
                            onPressed: (){
                              var state = popupMenuKey.currentState;
                              if(state!= null) {
                                state.showButtonMenu();
                              }
                            },
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.expand_circle_down_outlined,
                            size: 20,
                            color: Colors.black54,
                          ),
                          onPressed:
                              () => setState(() {
                                _isSelected = !_isSelected;
                              }),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      const SizedBox(width: 4),
                      const Text(
                        "项目启动会议",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const SizedBox(width: 4),
                    TaskStatus(
                      dotColor: Colors.blue,
                      label: "进行中",
                      fontSize: 18,
                    ),
                  ],
                ),
                AnimatedSize(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.easeIn,
                  child: SizedBox(
                    height: _isSelected ? 200 : 0,
                    child: const Center(child: FlutterLogo(size: 75.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
