import 'package:chan_no_okaimono_list/book_list_pages0.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_model0.dart';

void main0() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //String KboyText = 'Kboy!';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel0>(
        create: (_) => MainModel0(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('コリアンダー'),
          ),
          body: Consumer<MainModel0>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Text(model.kboyTtext,
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  RaisedButton(
                    child: Text('押して'),
                    onPressed: () {
                      // ここでなにかする
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookListPage0()),
                      );
                    },
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
