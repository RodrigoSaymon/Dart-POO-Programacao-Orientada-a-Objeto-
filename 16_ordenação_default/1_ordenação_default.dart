import 'cliente.dart';

void main() {
  var c1 = Cliente(nome: 'Rodrigo', telefone: '123123');
  var c2 = Cliente(nome: 'Elã', telefone: '123123');
  var c3 = Cliente(nome: 'Hitor', telefone: '123123');
  var c4 = Cliente(nome: 'Luana', telefone: '123123');

  var lista = [c1, c2, c3, c4];
  print(lista);
  lista.sort();

// lista.sort((c1, c2) => c1.nome.compareTo(c2.nome));
  print(lista);
}
