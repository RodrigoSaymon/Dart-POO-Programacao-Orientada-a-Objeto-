
import 'pessoa.dart';

void main() {
  var p1 = Pessoa(nome: 'Rodrigo Saymon', email: 'rodrigotbass@gmail.com');
  var p2 = Pessoa(nome: 'Rodrigo Saymon', email: 'rodrigotbass@gmail.com');

  print(p1.hashCode);
  print(p2.hashCode);

  print(p1);

  if (p1 == p2) {
    print('é igual');
  } else {
    print('não é igual');
  }
}

/**
 1- p1 = pessoa();
 2- p2 = pessoa();
 */