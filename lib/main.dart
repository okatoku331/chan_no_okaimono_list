import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //String KboyText = 'Kboy!';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:  ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('コリアンダー'),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(
                        model.kboyTtext,
                        style: TextStyle(
                          fontSize: 30,
                        )
                    ),
                    RaisedButton(
                      child: Text('ボタン'),
                      onPressed: (){
                        // ここでなにかする
                        model.changKboyText();
                      },

                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
   }
}
