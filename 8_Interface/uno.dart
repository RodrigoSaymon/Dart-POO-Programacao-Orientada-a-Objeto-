import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/8_Interface/carro.dart';

class Uno implements Carro {
  @override
  String motor = '1.0';

  @override
  int porta = 4;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 160;
  }
}
