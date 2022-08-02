import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/7_polimorfismo/anestesista.dart';
import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/7_polimorfismo/medico.dart';
import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/7_polimorfismo/obstreta.dart';
import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/7_polimorfismo/pediatra.dart';
import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/7_polimorfismo/residente_anestesia.dart';
// Polimorfismo - cada um tem uma especialidade diferente
void main() {
  // parto!!!

  var medicos = <Medico>[
   // Anestesista(), 
    ResidenteAnestesia(),
    Obstreta(),
    Pediatra()];

  // Realizar um parto
  for (var medico in medicos) {
    medico.operar();
  }
}
