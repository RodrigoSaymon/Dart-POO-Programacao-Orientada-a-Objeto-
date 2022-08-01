

import 'animal.dart';

class Cachorro extends Animal {
  Cachorro({required int idade, required String nome}) : super(idade: idade, nome: nome);

  @override
  
  int calcularIdadHumana() {
    // if (idade != null) {
    //    return idade! * 7;
    return idade * 7;
    // }
    // return 0;
  }
}
