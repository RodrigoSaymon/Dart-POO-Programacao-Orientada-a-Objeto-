import 'dart:io';

import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/20_Metadatas/fazer.dart';

@Fazer(quem: 'Rodrigo na class', 
oque: 'Estudar anotação da class'
)
@gzip
class Pessoa3 {
  @Fazer(quem: 'Rodrigo no atributo', 
  oque: 'Estudar anotação do atributo'
  )
  String? nome;

    @Fazer(quem: 'Rodrigo no atributo', 
  oque: 'Estudar anotação do atributo'
  )
  void fazerAlgo(){

  }
}
