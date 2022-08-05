

import 'anestesista.dart';

class ResidenteAnestesia extends Anestesista {
  @override
  void operar() {
    super.operar();

    print('Limpar e desmontar os equipamentos');
  }
}
