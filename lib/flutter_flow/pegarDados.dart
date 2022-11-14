import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Todo {
  String createdTime;

  Todo({
    required this.createdTime,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(createdTime: json['nome']);
  }
}

class NumeroDeRegistros extends ChangeNotifier {
  Future<int> GetData() async {
    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('dados-motoristas').get();
    List<Todo> _todos = snapshot.docs
        .map((d) => Todo.fromJson(d.data() as Map<String, dynamic>))
        .toList();
    return _todos.length;
  }
}
