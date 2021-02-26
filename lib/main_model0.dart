import 'package:flutter/cupertino.dart';

class MainModel0 extends ChangeNotifier {
  String kboyTtext = 'Kboy';

  void changKboyText() {
    kboyTtext = 'Kboyさんかっこいい';
    notifyListeners();
  }
}
