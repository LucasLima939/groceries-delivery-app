import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste/layout/layout_color.dart';

// VER PARÂMETROS CTRL + P e DOCUMENTATION CTRL + Q

class NormalButton extends StatefulWidget {
  final Widget child;
  final Color iconColor;
  final IconData iconToSet;
  final String buttonText;
  final Widget nextPage;

  NormalButton({
    Key key,
    this.child,
    this.iconColor,
    this.iconToSet,
    this.nextPage,
    this.buttonText = '',
  }) : super(key: key);

  _NormalButtonState createState() => _NormalButtonState();
}

class _NormalButtonState extends State<NormalButton> {
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.grey.shade900),
        ),
      ), // don't change
      padding: EdgeInsets.all(8.0),
      child: FlatButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Icon(
              widget.iconToSet ?? '',
              color: widget.iconColor ?? Colors.redAccent,
            ),
            Text(
              widget.buttonText ?? '',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
              textAlign: TextAlign.left,
            ),
            new Icon(
              Icons.arrow_forward_ios,
              color: LayoutColor.primaryColor,
            ),
          ],
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.nextPage ?? ''),
          );
        },
      ),
    );
  }
}

class SimpleTitle extends StatefulWidget {
  SimpleTitle({
    Key key,
    @required this.titlePadding,
    this.titleText = '',
  }) : super(key: key);
  final String titleText;
  final EdgeInsetsGeometry titlePadding;

  _SimpleTitle createState() => _SimpleTitle();
}

class _SimpleTitle extends State<SimpleTitle> {
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      padding: widget.titlePadding ?? '',
      child: Text(
        widget.titleText ?? '',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key key, this.setIcon, this.setTitle, this.setAction, this.setColor})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;
  final IconData setIcon;
  final Widget setTitle;
  final Color setColor;
  final List<Widget> setAction;

  @override
  _CustomAppBar createState() => _CustomAppBar();
}

class _CustomAppBar extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: widget.setTitle ?? Text(''), // pôr widget de logo
        backgroundColor: widget.setColor ?? Colors.red,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(widget.setIcon ?? Icons.home),
        ),
        actions: widget.setAction);
  }
}

class SeusPedidos extends StatelessWidget {
  static String tag = 'seusPedidos';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: new Row(
            children: <Widget>[
              new SizedBox(
                width: 20.0,
                height: 30.0,
                child: new FlatButton(
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                    ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  ),
                ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: Text('Seus Pedidos', style: TextStyle(color: Colors.white),),
                ),
            ],
            ),
          ),*/
        body: Center(
          child: Text('Você ainda não possui nenhum pedido'),
        ),
      ),
    );
  }
}

Widget fazContainer({String texto, String foto}) {
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
                image: AssetImage(foto), //Insere a foto passada;
                fit: BoxFit.cover,
              ),
            ),
            child: Text('dd'), //AguaContainer(),//ARROW BUTTON;
          ),
        ),
      ),
      Positioned(
        left: 38,
        top: 350,
        child: Text(
          texto, //TEXTO passado como param.
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Colors.white,
              fontSize: 29,
              fontWeight: FontWeight.bold,
              letterSpacing: 3.0),
        ),
      ),
    ],
  );
}

class FormasPagamento extends StatefulWidget {
  @override
  _FormasPagamentoState createState() => _FormasPagamentoState();
}

class _FormasPagamentoState extends State<FormasPagamento> {
  int _counter = 0;

  void _incrementCounter() {
    setState() {
      _counter++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: new Row(
            children: <Widget>[
              new SizedBox(
                width: 20.0,
                height: 30.0,
                child: new FlatButton(
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                    ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  ),
                ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: Text('Formas de Pagamento', style: TextStyle(color: Colors.white),),
                ),
            ],
            ),
          ),*/
        body: Center(
          // se não tiver uma forma de pagamento cadastrada
          child: Text('Clique no botão para adicionar uma forma de pagamento'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: LayoutColor.primaryColor,
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.control_point),
        ),
      ),
    );
  }
}

class EnderecosEntrega extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: new Row(
            children: <Widget>[
              new SizedBox(
                width: 20.0,
                height: 30.0,
                child: new FlatButton(
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                    ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  ),
                ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: Text('Endereços de Entrega', style: TextStyle(color: Colors.white),),
                ),
            ],
            ),
          ),*/
        body: Center(
          child: Text('Clique no botão para adicionar um endereço de entrega'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: LayoutColor.primaryColor,
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.control_point),
        ),
      ),
    );
  }
}

class AlterarSenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: new Row(
            children: <Widget>[
              new SizedBox(
                width: 20.0,
                height: 30.0,
                child: new FlatButton(
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                    ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  ),
                ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: Text('Alterar Senha', style: TextStyle(color: Colors.white),),
                ),
            ],
            ),
          ),*/
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(8.0, 20.0, 0.0, 2.0),
                  child: Text(
                    'Senha Atual: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                // box para adicionar a senha oculta
                // box para visualizar a senha oculta
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 15.0),
                  child: Text(
                    'Nova Senha: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                // box para digitar a nova senha oculta
                // box para vizualizar a senha oculta
              ],
            ),
            Row(
              children: <Widget>[
                Text('Esqueci a senha'),
                RaisedButton(
                  child: Text('Alterar Senha'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ComprasMyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Compras',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Compras'),
        ),
        body: Center(
          child: Text('Dboa'),
        ),
      ),
    );
  }
}

class ListaPedidos extends StatefulWidget {
  //homelist
  static List<Widget> items = List<Widget>();
  @override
  _ListaPedidosState createState() => _ListaPedidosState();
}

class _ListaPedidosState extends State<ListaPedidos> {
  @override
  Widget build(BuildContext context) {
    List<Widget> values = List<Widget>();
    if (ListaPedidos.items.length == 0) {
      values.add(
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Faça sua lista personalizada de produtos'),
          trailing: Icon(Icons.more_vert),
        ),
      );
    }
    return ListView(
        shrinkWrap: true,
        children:
            (ListaPedidos.items.length == 0) ? values : ListaPedidos.items);
  }
}

class ListPage extends StatefulWidget {
  static String tag = 'listPage';

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext mainContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nome do Produto'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              child: TextFormField(
                scrollPadding: EdgeInsets.all(30),
                decoration: InputDecoration(hintText: '    Pesquisar'),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 190,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: GestureDetector(
                      child: Icon(Icons.adjust, color: Colors.green),
                      onTap: () {
                        print('Marcar como adquirido');
                      },
                    ),
                    title: Text('Nome do Item'),
                    subtitle: Text('4 X R\$ 1,50 = R\$6,00'),
                    trailing: GestureDetector(
                      child: Icon(Icons.delete),
                      onTap: () {
                        print('Deletar');
                      },
                    ),
                    onLongPress: () {
                      print('Editar Produto');
                    },
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.deepOrange,
              height: 65,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width /
                        2, // PEGOU O PADDING E DIVIDIU-SE POR DOIS P CADA CONTAINER
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Total de Items: 1'),
                        Text('Já adquirido: 0')
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.indigo,
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Total: R\$ 15,00',
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
