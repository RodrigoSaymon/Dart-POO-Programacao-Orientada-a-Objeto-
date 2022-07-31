import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/3_Inicializadores/Cliente.dart';

// TOME MUITO CUIDADO COM O LATE E O ! (USE SOMENTE SE SABE OQUE ESTÁ FAZENDO)
// late muito perigoso usar somente se tiver certeza
// sobrescreve todas as outras regras
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
