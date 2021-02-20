import 'package:chan_no_okaimono_list/main_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //String KboyText = 'Kboy!';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:  ChangeNotifierProvider<MainMdel>(
        create: (_) => MainMdel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('コリアンダー'),
          ),
          body: Consumer<MainMdel>(builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(
                        model.KboyText,
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
