import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

void main() {
  var uno = Uno();
  var gol = Gol();
  Carro golCarro = Gol();
 

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
 ''');
}
