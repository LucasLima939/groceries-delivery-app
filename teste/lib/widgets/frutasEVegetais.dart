import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:teste/abas/compras_widget.dart';

class FrutasEVegetais extends StatefulWidget {
  @override
  _FrutasEVegetaisState createState() => _FrutasEVegetaisState();
}

class _FrutasEVegetaisState extends State<FrutasEVegetais> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            margin: EdgeInsets.only(bottom: 6.0),
            width: 360,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
              image: AssetImage('assets/images/2772787.jpg'),
              fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Material(
                type: MaterialType.transparency,
                child: Ink(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3.0),
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(1000),
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(Icons.arrow_forward, size: 50, color: Colors.white,)
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Positioned(
        left: 38,
        top: 350,
        child: Text(
          '''FRUTAS E VEGETAIS 
FRESCOS''',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontSize: 29,
            fontWeight: FontWeight.bold,
            letterSpacing: 3.0
          ),
        )
      ),
      ],
    );
  }
}