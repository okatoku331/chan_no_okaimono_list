
import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  String kboyTtext = 'Kboy';

  void changKboyText(){
    kboyTtext = 'Kboyさんかっこいい';
    notifyListeners();
  }

}