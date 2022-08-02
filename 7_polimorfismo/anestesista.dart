import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/7_polimorfismo/medico.dart';

class Anestesista extends Medico {
  @override
  void operar() {
    print('preparar e esterilzar os equipamentos');
    print('anestesiar o paciente');
  }
}
