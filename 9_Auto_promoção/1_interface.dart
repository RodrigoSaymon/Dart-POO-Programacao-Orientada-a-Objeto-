import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/8_Interface/carro.dart';
import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/8_Interface/gol.dart';
import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/8_Interface/uno.dart';
Crro golCarro2 = Gol();
void main() {
  String? nome;

  if (nome != null) {
    nome.toLowerCase();
    // se eu fizer a checagem ele faz a auto promovido pra não nulo
  }
  // variaveis de nivel superior e atributos de classe 
  // não são promovidas automaticamento para o tipo checado
if (golCarro2 is Gol){
  (golCarro2 as Gol).tipoDeRodas();
}
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

  golCarro.tipoDeRoda();
  var tipoDeRodas = (golCarro as Gol).tipoDeRoda();
  print ('tipo de Rodas $tipoDeRodas');
  // precisar converter pra ter acesso
// quando checamos a variavel é(is) de tipo
// caso seja o darte vai converte automaticamente
// é necessario converte essa instancia para a classe do tipo!!!
  if(golCarro is Gol){
    golCarro.tipoDeRoda();
  }


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
tipo de Rodas: ${carro is Gol ? carrp.tipoDeRoda() : 'Não dsponivel'}
''');
}
