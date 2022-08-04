import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/8_Interface/carro.dart';
import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/8_Interface/gol.dart';
import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/8_Interface/uno.dart';

void main() {
  var uno = Uno();
  var gol = Gol();

  // print(uno.velocidadeMaxima());
  // print(gol.velocidadeMaxima());
  printarDadosDoCarro(uno);
  printarDadosDoCarro(uno);
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
