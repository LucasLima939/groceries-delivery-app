import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(Lista());

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Questions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyAppScreen(),
    );
  }
}

class MyAppScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppScreenState();
  }
}

class MyAppScreenState extends State<MyAppScreen> {
  List<String> _questions = [];

  Future<List<String>> _loadQuestions() async {
    List<String> questions = [];
    await rootBundle.loadString('assets/lista/listabarato.txt').then((q) {
      for (String i in LineSplitter().convert(q)) {
        questions.add(i);
      }
    });
    return questions;
  }

  @override
  void initState() {
    _setup();
    super.initState();
  }

  _setup() async {
    // Retrieve the questions (Processed in the background)
    List<String> questions = await _loadQuestions();

    // Notify the UI and display the questions
    setState(() {
      _questions = questions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista')),
      body: Center(
        child: Container(
          child: ListView.builder(
            itemCount: _questions.length,
            itemBuilder: (context, index) {
              return Text(_questions[index]);
            },
          ),
        ),
      ),
    );
  }
}
