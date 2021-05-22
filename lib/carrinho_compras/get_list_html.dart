
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(
  new MaterialApp(
    home: new GetListHtml(),
  ));

class GetListHtml extends StatefulWidget {
  @override
  _GetListHtmlState createState() => _GetListHtmlState();
}

class _GetListHtmlState extends State<GetListHtml> {

  final String url = "https://swapi.dev/api/people/";
  final String url2 = "https://swapi.dev/api/planets/";
  static List data;
  static List data2;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await http.get(
      // Codificar a urluri
      Uri.encodeFull(url), // método para códificar
          // recebe apenas 1 url, criar outra var response
        // aceita apenas a resposta json
      headers: {"Accept": "application/json"});

    var response2 = await http.get(Uri.encodeFull(url2), headers: {"Accept": "application/json"});

    print(response.body);
    print(response2.body);

    setState(() {

      var convertDataToJson = json.decode(response.body);
      data = convertDataToJson['results'];

      var convertDataToJson2 = json.decode(response2.body);
      data2 = convertDataToJson2['results'];

    });

    return "Success";
  }



  @override
  Widget build(BuildContext context) { // constroi o app
    return Scaffold(
      appBar: AppBar(
        title: Text("Pegar Json via HTTP Get"),
      ),
      body: ListView.builder(

        itemCount: data == null ? 0 : data.length | data2.length,
        itemBuilder: (BuildContext context, int index) { // recebe um contexto e um index tipo int
          return Container (
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Card(
                    child: Container(
                  padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                            color: Colors.red,
                            padding: EdgeInsets.all(5),
                            child: Text(data[index]['name'])),

                        Container(
                            color: Colors.blue,
                            padding: EdgeInsets.all(5),
                            child: Text(data[index]['gender'])),

                        Container(
                            color: Colors.yellow,
                            padding: EdgeInsets.all(5),
                            child: Text(data[index]['eye_color'])),

                        Container(
                            color: Colors.greenAccent,
                            padding: EdgeInsets.all(5),
                            child: Text(data2[index]['name'])),
                      ],
                    ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }

      ),
    );
  }
}
