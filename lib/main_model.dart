
import 'package:flutter/cupertino.dart';

class MainMdel extends ChangeNotifier {
  String KboyText = 'Kboy';

  void changKboyText(){
    KboyText = 'Kboyさんかっこいい';
    notifyListeners();
  }

}