

import 'animal.dart';

class Gato extends Animal {
  Gato({required int idade}) : super(idade: idade, nome: 'Gatinho');
  @override
  int calcularIdadHumana() {
    return idade * 15;
  }
}
