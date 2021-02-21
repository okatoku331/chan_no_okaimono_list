
import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  String KboyText = 'Kboy';

  void changKboyText(){
    KboyText = 'Kboyさんかっこいい';
    notifyListeners();
  }

}