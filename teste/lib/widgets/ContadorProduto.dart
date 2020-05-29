import 'package:flutter/material.dart';
class ProductCounter extends StatefulWidget {
  ProductCounter({Key key}) : super(key: key);
  @override
  _ProductCounterState createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
  int _counter = 0;

  void increment() {
    setState(() {
      _counter++;
    });
  }

  void decrement(){
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            SizedBox(width: 5.0,),
            Text(
              'Quantidade:',
              style: TextStyle(fontSize: 20.0),
              ),
            SizedBox(width: 5.0,),
            Container(
              width: 30.0,
              height: 30.0,
              child: FloatingActionButton(
                onPressed: decrement,
                child: Icon(Icons.remove),
                tooltip: 'Remover',
                ),
              ),
            SizedBox(child: Padding(
              padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              child: Text('$_counter', style: TextStyle(fontSize: 30.0),),
            )),
            Container(
              width: 30.0,
              height: 30.0,
              child: FloatingActionButton(
                onPressed: increment,
                child: Icon(Icons.add),
                tooltip: 'Adicionar',
                ),
              ),
            SizedBox(width: 20.0,),
            Center(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: (){},
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.shopping_basket),
                      Text('  Comprar'),
                    ],
                    ),
                  ),
                ),
          ],
          ),
      ),
    );
  }
}