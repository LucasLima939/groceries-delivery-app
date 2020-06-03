import 'package:flutter/material.dart';
import 'package:teste/widgets/layoutApp.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              alignment: Alignment(0.0, 1.15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/iconeOfertas1.png'),//trocar ;(
                  fit: BoxFit.scaleDown,
                  ),
                ),
              child: Container(
                height: 60,
                width: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1.0],
                    colors: [
                      LayoutApp.primaryTudodBom, // COR
                      LayoutApp.primaryTudodBom[600] // COR
                    ],
                    ),
                  border: Border.all(
                    width:  4.0,
                    color: Colors.white,
                    ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                    ),
                  ),
                child: SizedBox.expand(
                  child: FlatButton(
                    onPressed: (){},
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            SizedBox(
              height: 20.0,
              ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Nome de Usuário",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0,
                    )
                  ),
              style: TextStyle(
                fontSize: 20.0,
                ),
              ),
            SizedBox(
              height: 10.0,
              ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  ),
                ),
              style: TextStyle(
                fontSize: 20,
                ),
              ),
            SizedBox(
              height: 10.0,
              ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  ),
                ),
              style: TextStyle(
                fontSize: 20,
                ),
              ),
            SizedBox(
              height: 25,
              ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1.0],
                  colors: [
                    LayoutApp.primaryTudodBom, // COR
                    LayoutApp.primaryTudodBom[600] // COR
                  ],
                  ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                  ),
                ),
              child: SizedBox.expand(
                child: FlatButton(
                  onPressed: (){},
                  child: Center(
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                        ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                ),
                ),
              ),
            SizedBox(
              height: 10.0,
              ),
            Container(
              height: 40.0,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  'Esqueci a senha',
                  textAlign: TextAlign.center,
                  ),
                onPressed: () => Navigator.of(context).pushNamed('esqueciSenha'),
                ),
              ),
          ],
          ),
        ),
    );
  }
}