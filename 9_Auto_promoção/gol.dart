import 'carro.dart';

class Gol implements Carro {
  @override
  String motor = '2.0';

  @override
  int porta = 4;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 200;
  }

  String tipoDeRodas() {
    return 'esportivo';
  }
}
