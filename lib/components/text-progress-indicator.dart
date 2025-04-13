import 'package:flutter/material.dart';

class TextProgressIndicator extends StatefulWidget {
  const TextProgressIndicator({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextProgressIndicatorState();
  }
}

class _TextProgressIndicatorState extends State<TextProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              "平均难度",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Expanded(child: Container()),
            Row(
              children: [
                const Text(
                  "3.2/5",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const Icon(
                  Icons.warning_amber,
                  color: Colors.orange,
                  size: 14,
                  weight: 600,
                ),
              ],
            )
          ],
        ),
        Row(
          children: [
            Expanded(child: SizedBox(
              height: 8,
              child: LinearProgressIndicator(
                value: 0.8, // 进度值，范围从 0.0 到 1.0
                borderRadius: BorderRadius.circular(5),
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
              ),
            ),)
          ],
        ),
      ],
    );
  }
}
