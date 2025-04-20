import 'package:flutter/cupertino.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProfilePage();
  }
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("profile"));
  }
}
