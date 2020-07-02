import 'package:flutter/material.dart';
import 'package:teste/layout/layout_app.dart';

import 'carro.dart';
import 'carros_api.dart';

class OfertasPage extends StatelessWidget {
  static String tag = 'ofertas-page';
  @override
  Widget build(BuildContext context) {
    return Layout(body: Ofertas());
  }
}

class Ofertas extends StatefulWidget {
  @override
  _OfertasState createState() => _OfertasState();
}

class _OfertasState extends State<Ofertas> {
  @override
  Widget build(BuildContext context) {
    Future<List<Carro>> future = CarrosApi.getCarros();

    /// método responsável por transformar Future em Widget
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print(snapshot.error);
          return Center(
              child: Text(
            "Não foi possível encontrar a lista",
            style: TextStyle(
              color: Colors.red,
              fontSize: 22,
            ),
          ));
        }
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        List<Carro> carros = snapshot.data;
        return _listView(carros);
      },
    );
  }

  Container _listView(List<Carro> carros) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView.builder(
          itemCount: carros != null ? carros.length : 0,
          itemBuilder: (context, index) {
            Carro c = carros[index];

            return Card(
              color: Colors.grey[100],
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Image.network(
                        c.urlFoto ??
                            "https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/esportivos/Porsche_Panamera.png",
                        width: 250,
                      ),
                    ),
                    Text(
                      c.nome,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis, // ellipsis add "..."
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      "descrição...",
                      style: TextStyle(fontSize: 16),
                    ),
                    ButtonBarTheme(
                      data: ButtonBarTheme.of(context),
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('DETALHES'),
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: const Text('SHARE'),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
