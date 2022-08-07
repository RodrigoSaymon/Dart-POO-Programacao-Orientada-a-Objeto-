import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

void main() {
  Carro golCarro = Gol();
  var uno = Uno();
  var gol = Gol();

  // print(uno.velocidadeMaxima());
  // print(gol.velocidadeMaxima());
  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);
  print(gol.tipoDeRodas());
}
void printarDadosDoCarro(Carro carro) {
  print('''
carro:
 tipo: ${carro.runtimeType}
 portas: ${carro.porta}
 rodas: ${carro.rodas}
 motor: ${carro.motor}
 velodidade Máxima: ${carro.velocidadeMaxima()}
 tipo de roda: ${carro is Gol ? carro.tipoDeRodas() : 'Não disponivel'}
 ''');
}
