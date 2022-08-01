import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/5_Heranca_covariante/fruta.dart';

abstract class Mamifero {
  void comer(covariant Fruta fruta);

  // covariant - permite classes de filhas de quem se trabalha
}
