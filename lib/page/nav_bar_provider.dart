import 'package:flutter/cupertino.dart';

class NavBarProvider extends ChangeNotifier {

  var _selected = 0;

  changePage(n) {
    _selected = n;
    notifyListeners();
  }

}