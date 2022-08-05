
import 'medico.dart';
import 'obstreta.dart';
import 'pediatra.dart';
import 'residente_anestesia.dart';

void main() {
  // parto!!!

  var medicos = <Medico>[
    // Anestesista(),
    ResidenteAnestesia(),
    Obstreta(),
    Pediatra()
  ];

  // Realizar um parto
  for (var medico in medicos) {
    medico.operar();
  }
}
