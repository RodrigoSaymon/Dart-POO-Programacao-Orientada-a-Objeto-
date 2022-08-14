import 'dart:mirrors';
import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/20_Metadatas/fazer.dart';
import 'package:dart_fundamentos/Curso_Rodrigo_Raman/M%C3%B3dulo_5_Dart_POO/20_Metadatas/pessoa3.dart';

void main() {
  final p1 = Pessoa3();
  var instanceMirror = reflect(p1);

  var classMirror = instanceMirror.type;

  classMirror.metadata.forEach((annotation) {
    var instaceAnnoation = annotation.reflectee;
    if (instaceAnnoation is Fazer) {
      print('Class!!!');
      print('Quem: ${instaceAnnoation.quem}');
      print('O que: ${instaceAnnoation.oque}');
    }
  });

  classMirror.declarations.values.forEach((DeclarationMirror) {
    if (DeclarationMirror is VariableMirror) {
      DeclarationMirror.metadata.forEach((annotation) {
        var instaceAnnoation = annotation.reflectee;
        if (instaceAnnoation is Fazer) {
          print('Variáveis!!!');
          print('Quem: ${instaceAnnoation.quem}');
          print('O que: ${instaceAnnoation.oque}');
        }
      });
    } else if (DeclarationMirror is MethodMirror) {
      DeclarationMirror.metadata.forEach((annotation) {
        var instaceAnnoation = annotation.reflectee;
        if (instaceAnnoation is Fazer) {
          print('Metodos!!!');
          print('Quem: ${instaceAnnoation.quem}');
          print('O que: ${instaceAnnoation.oque}');
        }
      });
    }
  });
}
