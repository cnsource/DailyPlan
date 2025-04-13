import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BottomNavBarState();
  }
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 60,
      color: Colors.green.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, "/"),
            child: Icon(Icons.home, size: 24),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, "/second"),
            child: Icon(Icons.search, size: 24),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, "/"),
            child: Icon(Icons.person, size: 24),
          ),
        ],
      ),
    );
  }
}
