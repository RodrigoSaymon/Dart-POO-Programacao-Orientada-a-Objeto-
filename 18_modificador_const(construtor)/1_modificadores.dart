import 'pessoa1.dart';

void main() {
  var p1 = const Pessoa1(nome: 'Rodrigo', idade: 37);
  var p2 = const Pessoa1(nome: 'Rodrigo', idade: 36);
  var p3 = const Pessoa1(nome: 'Rodrigo', idade: 36);

  print(p1 == p2);
  print(p1 == p2 && p2 == p3);
}

/*
1 - p1 = Pessoa (...)
2 - p2 = Pessoa (...)


1 - p1 = const Pessoa (...);
2 - p2 = p1

*/

