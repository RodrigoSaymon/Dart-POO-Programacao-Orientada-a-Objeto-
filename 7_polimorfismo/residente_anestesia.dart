import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/7_polimorfismo/anestesista.dart';
import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/7_polimorfismo/medico.dart';

class ResidenteAnestesia extends Anestesista {
  @override
  void operar() {
    super.operar();

    print('Limpar e desmontar os equipamentos');
  }
}
