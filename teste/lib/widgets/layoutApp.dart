import 'package:flutter/material.dart';

import 'myWidgets.dart';

class LayoutApp {

  static Scaffold getContent(BuildContext context, content) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text('Lucas'),),
        actions: _getActions(context),
        ),
      body: content,
    );
  }



  static MaterialColor primaryIdeal = MaterialColor(0xfffc4926, redIdeal);
  static int _rp = 252; // red primary
  static int _gp = 73; // green primary
  static int _bp = 38; // blue primary
  static Map<int, Color> redIdeal = // toms de cor
  {
    50:Color.fromRGBO(_rp,_gp,_bp, .1),
    100:Color.fromRGBO(_rp,_gp,_bp, .2),
    200:Color.fromRGBO(_rp,_gp,_bp, .3),
    300:Color.fromRGBO(_rp,_gp,_bp, .4),
    400:Color.fromRGBO(_rp,_gp,_bp, .5),
    500:Color.fromRGBO(_rp,_gp,_bp, .6),
    600:Color.fromRGBO(_rp,_gp,_bp, .7),
    700:Color.fromRGBO(_rp,_gp,_bp, .8),
    800:Color.fromRGBO(_rp,_gp,_bp, .9),
    900:Color.fromRGBO(_rp,_gp,_bp, 1),
  };

  static MaterialColor secondaryIdeal = MaterialColor(0xffffff00, yellowIdeal);
  static int _rs = 255; // red secondary
  static int _gs = 255; // green secondary
  static int _bs = 0; // blue secondary
  static Map<int, Color> yellowIdeal = // toms de cor
  {
    50:Color.fromRGBO(_rs,_gs,_bs, .1),
    100:Color.fromRGBO(_rs,_gs,_bs, .2),
    200:Color.fromRGBO(_rs,_gs,_bs, .3),
    300:Color.fromRGBO(_rs,_gs,_bs, .4),
    400:Color.fromRGBO(_rs,_gs,_bs, .5),
    500:Color.fromRGBO(_rs,_gs,_bs, .6),
    600:Color.fromRGBO(_rs,_gs,_bs, .7),
    700:Color.fromRGBO(_rs,_gs,_bs, .8),
    800:Color.fromRGBO(_rs,_gs,_bs, .9),
    900:Color.fromRGBO(_rs,_gs,_bs, 1),
  };
  static MaterialColor primaryBaratao = MaterialColor(0xff3b3c7d, blueBaratao);
  static int _rpb = 59; // red primary baratao
  static int _gpb = 60; // green primary baratao
  static int _bpb = 125; // blue primary baratao
  static Map<int, Color> blueBaratao = // tonalidades de cor
  {
    50:Color.fromRGBO(_rpb,_gpb,_bpb, .1),
    100:Color.fromRGBO(_rpb,_gpb,_bpb, .2),
    200:Color.fromRGBO(_rpb,_gpb,_bpb, .3),
    300:Color.fromRGBO(_rpb,_gpb,_bpb, .4),
    400:Color.fromRGBO(_rpb,_gpb,_bpb, .5),
    500:Color.fromRGBO(_rpb,_gpb,_bpb, .6),
    600:Color.fromRGBO(_rpb,_gpb,_bpb, .7),
    700:Color.fromRGBO(_rpb,_gpb,_bpb, .8),
    800:Color.fromRGBO(_rpb,_gpb,_bpb, .9),
    900:Color.fromRGBO(_rpb,_gpb,_bpb, 1),
  };

  static MaterialColor secondaryBaratao = MaterialColor(0xfff9e011, yellowBaratao);
  static int _rsb = 249; // red secondary
  static int _gsb = 224; // green secondary
  static int _bsb = 17; // blue secondary
  static Map<int, Color> yellowBaratao = // toms de cor
  {
    50:Color.fromRGBO(_rsb,_gsb,_bsb, .1),
    100:Color.fromRGBO(_rsb,_gsb,_bsb, .2),
    200:Color.fromRGBO(_rsb,_gsb,_bsb, .3),
    300:Color.fromRGBO(_rsb,_gsb,_bsb, .4),
    400:Color.fromRGBO(_rsb,_gsb,_bsb, .5),
    500:Color.fromRGBO(_rsb,_gsb,_bsb, .6),
    600:Color.fromRGBO(_rsb,_gsb,_bsb, .7),
    700:Color.fromRGBO(_rsb,_gsb,_bsb, .8),
    800:Color.fromRGBO(_rsb,_gsb,_bsb, .9),
    900:Color.fromRGBO(_rsb,_gsb,_bsb, 1),
  };


  static MaterialColor primaryTudodBom = MaterialColor(0xff008B17, greenMarket);
  static int _rpt = 0; // red primary
  static int _gpt = 139; // green primary
  static int _bpt = 23; // blue primary
  static Map<int, Color> greenMarket = // toms de cor
  {
  50:Color.fromRGBO(_rpt,_gpt,_bpt, .1),
  100:Color.fromRGBO(_rpt,_gpt,_bpt, .2),
  200:Color.fromRGBO(_rpt,_gpt,_bpt, .3),
  300:Color.fromRGBO(_rpt,_gpt,_bpt, .4),
  400:Color.fromRGBO(_rpt,_gpt,_bpt, .5),
  500:Color.fromRGBO(_rpt,_gpt,_bpt, .6),
  600:Color.fromRGBO(_rpt,_gpt,_bpt, .7),
  700:Color.fromRGBO(_rpt,_gpt,_bpt, .8),
  800:Color.fromRGBO(_rpt,_gpt,_bpt, .9),
  900:Color.fromRGBO(_rpt,_gpt,_bpt, 1),
};

  static MaterialColor secondaryTudodBom = MaterialColor(0xfffefdf9, whiteMarket);
  static int _rst = 254; // red secondary
  static int _gst = 253; // green secondary
  static int _bst = 249; // blue secondary
  static Map<int, Color> whiteMarket = // toms de cor
  {
    50:Color.fromRGBO(_rst,_gst,_bst, .1),
    100:Color.fromRGBO(_rst,_gst,_bst, .2),
    200:Color.fromRGBO(_rst,_gst,_bst, .3),
    300:Color.fromRGBO(_rst,_gst,_bst, .4),
    400:Color.fromRGBO(_rst,_gst,_bst, .5),
    500:Color.fromRGBO(_rst,_gst,_bst, .6),
    600:Color.fromRGBO(_rst,_gst,_bst, .7),
    700:Color.fromRGBO(_rst,_gst,_bst, .8),
    800:Color.fromRGBO(_rst,_gst,_bst, .9),
    900:Color.fromRGBO(_rst,_gst,_bst, 1),
  };

  static MaterialColor backgroundWhite = MaterialColor(0xfffefdf9, paleMarket);
  static int _rb = 254; // red background
  static int _gb = 253; // green background
  static int _bb = 249; // blue background
  static Map<int, Color> paleMarket = // toms de cor
  {
    50:Color.fromRGBO(_rb,_gb,_bb, .1),
    100:Color.fromRGBO(_rb,_gb,_bb, .2),
    200:Color.fromRGBO(_rb,_gb,_bb, .3),
    300:Color.fromRGBO(_rb,_gb,_bb, .4),
    400:Color.fromRGBO(_rb,_gb,_bb, .5),
    500:Color.fromRGBO(_rb,_gb,_bb, .6),
    600:Color.fromRGBO(_rb,_gb,_bb, .7),
    700:Color.fromRGBO(_rb,_gb,_bb, .8),
    800:Color.fromRGBO(_rb,_gb,_bb, .9),
    900:Color.fromRGBO(_rb,_gb,_bb, 1),
  };

  static MaterialColor textBlack = MaterialColor(0xff090101, blackMarket);
  static int _rt = 9; // red background
  static int _gt = 1; // green background
  static int _bt = 1; // blue background
  static Map<int, Color> blackMarket = {900:Color.fromRGBO(_rt,_gt,_bt, 1),};


  static List<Widget> _getActions(BuildContext context) {

    List<Widget> items = List<Widget>( );

    //fora da pagina add items nao mostra acao alguma

    TextEditingController _c = TextEditingController( );

    items.add(
      GestureDetector(

        onTap: () {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext ctx) {
                final input = TextFormField(
                  controller: _c,
                  decoration: InputDecoration(
                    hintText: 'Nome do Produto',
                    contentPadding: EdgeInsets.fromLTRB( 20, 10, 20, 10
                                                         ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular( 5
                                                             )
                        ),
                    ),
                  );

                return AlertDialog(
                  title: Text( 'Nova Lista'
                               ),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        input
                      ],
                      ),
                    ),
                  actions: <Widget>[
                    RaisedButton(
                      color: Colors.red,
                      child: Text(
                        'Cancelar', style: TextStyle( color: Colors.white
                                                      ),
                        ),
                      onPressed: () {
                        Navigator.of( ctx
                                      ).pop( );
                      },
                      ),
                    RaisedButton(
                      color: Colors.red,
                      child: Text(
                        'Adicionar', style: TextStyle( color: Colors.white
                                                       ),
                        ),
                      onPressed: () {
                        ListaPedidos.items.add(
                          ListTile(
                            leading: Icon(Icons.pages),
                            title: Text(_c.text),
                            trailing: Icon(Icons.settings_applications),
                            onTap: () {
                              Navigator.of(context).pushNamed('listPage');
                            },
                            ),
                          );

                        Navigator.of(ctx).popAndPushNamed('layoutLista');
                      },
                      ),
                  ],
                  );
              }
              );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon( Icons.add, color: Colors.white,
                       ),
          ),


        ),
      );

    return items;

  }




}