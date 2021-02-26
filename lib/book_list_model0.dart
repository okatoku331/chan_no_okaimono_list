import 'package:chan_no_okaimono_list/book0.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class BookListModel0 extends ChangeNotifier {
  List<Book0> books = [];

  Future fetchBooks() async {
    final docs =
        await FirebaseFirestore.instance.collection('books').getDocuments();
    final books = docs.documents.map((doc) => Book0(doc['title'])).toList();
    this.books = books;
    notifyListeners();
  }
}
