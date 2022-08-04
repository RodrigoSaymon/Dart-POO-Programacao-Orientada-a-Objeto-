import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/10_mixins/artista.dart';

mixin Dancar on Artista {
  String dancar() {
    return 'Dança forró';
  }

  @override
  String habilidade() {
    return 'Dancar';
  }
}
