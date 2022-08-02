

import 'cachorro.dart';

void main() {
  var cachorro = Cachorro(idade: 10, nome: 'Pandora');
  cachorro.tamanho = 'Pequeno';

  // cachorro.idade = 10;
  print(cachorro.calcularIdadHumana());
  print(cachorro.recuperarIdade());

  print('''
Cachorro: 
  Tamanho: ${cachorro.tamanho}
  Idade: ${cachorro.idade}
  Idade Humana: ${cachorro.calcularIdadHumana()}
  ''');
}
