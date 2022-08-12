import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/19_extensions/pessoa.dart';

extension SaudacaoStringExtension on String {
  String saudacao() {
    return 'Olá $this bem vindo';
  }
}
