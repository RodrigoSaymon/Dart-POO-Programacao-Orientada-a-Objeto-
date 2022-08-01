import 'Cliente.dart';

late final String nome;
void main() {
  var cliente = Cliente(nome: 'Rodrigo');
  cliente.nome = 'Rodrigo';
  print(cliente.nome);
  // cliente.nome = 'Saymon';
  print(cliente.nome);
  //  print(cliente.idade?.toLowerCase()??'');

  // CHECAGEM DE NULL
  if (cliente.idade != null) {
    // print(cliente.idade?.toLowerCase() ?? '');
    print(cliente.idade!.toLowerCase());
  }

  nome = 'Rodrigo S';
  print(nome);
}
