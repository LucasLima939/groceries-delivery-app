//import 'compras_widget.dart';
import 'product.dart';

final Produto frutas = Produto(
  id: 0,
  nome: 'Frutas',
  imageURL: 'assets/images/frutas.jpg',
);

final Produto comidas = Produto(
  id: 1,
  nome: 'Comidas',
  imageURL: 'assets/images/comidas.jpg',
);

final Produto bebidas = Produto(
  id: 2,
  nome: 'Bebidas',
  imageURL: 'assets/images/bebidas.jpg',
);

final Produto limpeza = Produto(
  id: 3,
  nome: 'Limpeza',
  imageURL: 'assets/images/limpeza.jpg',
);

final Produto pessoal = Produto(
  id: 4,
  nome: 'Pessoais',
  imageURL: 'assets/images/pessoal.jpg',
);

final Produto infantil = Produto(
  id: 5,
  nome: 'Infantil',
  imageURL: 'assets/images/infantil.jpg',
);

final Produto congelados = Produto(
  id: 6,
  nome: 'Congelados',
  imageURL: 'assets/images/congelados.jpg',
);

final Produto banana = Produto(
  id: 7,
  nome: 'Banana',
  imageURL: 'assets/images/banana.jpg',
  imagePNG: 'assets/images/bananaXD.png',
  preco: 3.43,
  descricao:
      'Banana é boa com whey bicho, agora tem que ser de baunilha, o resto é lixo',
);

final Produto maca = Produto(
  id: 8,
  nome: 'Maça',
  imageURL: 'assets/images/maça.jpg',
  imagePNG: 'assets/images/maçaPNG.png',
  preco: 3.43,
  descricao: 'Maça verde é bom pakas, mas essa aqui é vermelha mesmo porra',
);

final Produto uva = Produto(
  id: 9,
  nome: 'Uva',
  imageURL: 'assets/images/uva.jpg',
);

final Produto pera = Produto(
  id: 10,
  nome: 'Pera',
  imageURL: 'assets/images/pera.jpg',
);

final Produto morango = Produto(
  id: 11,
  nome: 'Morango',
  imageURL: 'assets/images/morango.jpg',
);

//Começo das 'MARCAS';

final Produto nestle = Produto(
  id: 12,
  nome: 'Nestle',
  imageURL: 'assets/images/nestle.jpg',
);

final Produto bauducco = Produto(
  id: 13,
  nome: 'Bauducco',
  imageURL: 'assets/images/bauducco.jpg',
);

final Produto heinz = Produto(
  id: 14,
  nome: 'Heinz',
  imageURL: 'assets/images/heinz.jpg',
);

final Produto hellmans = Produto(
  id: 15,
  nome: "Hellmann's",
  imageURL: 'assets/images/hellmans.jpg',
);

List<Produto> categorias = [
  frutas,
  comidas,
  bebidas,
  limpeza,
  pessoal,
  infantil,
  congelados
];
List<Produto> produtos = [
  banana,
  maca,
  uva,
  pera,
  morango,
];
List<Produto> marcas = [
  nestle,
  bauducco,
  heinz,
  hellmans,
];
