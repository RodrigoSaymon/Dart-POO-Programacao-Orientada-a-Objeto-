import 'Camiseta.dart';

void main() {

  var camisetaNike = new Camiseta();
  camisetaNike.tamanho = "G";
  camisetaNike.cor = "Preta";
  camisetaNike.marca = "Nike";

  var camisetaAdidas = new Camiseta();
  camisetaAdidas.tamanho = "P";
  camisetaAdidas.cor = "vermelha";
  camisetaAdidas.marca = "adidas";

// Atributo de Classe

  print(Camiseta.nome);
  print(Camiseta.recuperarNome());
  print('''
Camiseta:
  Tamanho: ${camisetaNike.tamanho}
  Cor: ${camisetaNike.cor}
  Marca: ${camisetaNike.marca}
  TipoDeLavagem: ${camisetaNike.tipoDeLavagem()}
''');

  print('''
Camiseta:
  Tamanho: ${camisetaAdidas.tamanho}
  Cor: ${camisetaAdidas.cor}
  Marca: ${camisetaAdidas.marca}
  TipoDeLavagem: ${camisetaAdidas.tipoDeLavagem()}
''');
}
