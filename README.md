![][codigo2]

<h1 align="center"> <img width="100" height = "100" src="https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg">

**Dart POO( Programação Orientada a Objeto) - Modúlo 5** 

![][codigo]

<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Classes - Aula 1

<h2><p align="left">

Classes é a representação do mundo real. Tudo dentro do Dart são classe;
  - **String**
  - **int**
  - **double**

Todas as classes possuem características e comportamentos:

**Características** - são os atributos dentro de uma classe. Os a tributos de Instância são definições genéricas da classe, a partir dele posso fazer atribuições para vários objetos diferentes:
````dart
class Camiseta {
  String? tamanho;
  String? _cor;
  String? marca;
}
````
**Objeto** – o momento em que instancio uma classe, estabelecendo valores para os atributos que antes eram nulos:
````dart
 var camisetaNike = new Camiseta();
  camisetaNike.tamanho = "G";
  camisetaNike.cor = "Preta";
  camisetaNike.marca = "Nike";
  ````

**Comportamento** - são as Funções que dentro das classes são chamadas de métodos;
````dart
  String tipoDeLavagem() {
    if (marca == "Nike") {
      return 'Não pode lavar na maquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }
  ````
  <p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Modificadores - Aula 1.1

<h2><p align="left">

**Atributos de Classe (static)** - tem acesso direto pela classe não precisar instanciar. O mesmo atributo é utilizado em todo o sistema; é aconselhado usar const pra evitar que mude;
````dart
static const String nome = "Camiseta";
````
- **Métodos de classe** - tem acesso direto pela classe não precisar instanciar;
````dart
static String recuperarNome() => nome;
  ````
**Atributo privado** - só permite acesso dentro da própria classe e dentro do mesmo arquivo. Para ter acesso, é necessário encapsular utilizando um método get set:
````dart
  String? get cor => _cor;
  set cor(String? cor) {
    if (cor == 'verde') {
      throw Exception('Não pode ser Verde');
    }
  }
  ````
<h4>

````dart

import 'Camiseta.dart';

void main() {

  var camisetaNike = new Camiseta();
  camisetaNike.tamanho = "G";
  camisetaNike.cor = "Preta";
  camisetaNike.marca = "Nike";

  var camisetaAdidas = new Camiseta();
  camisetaAdidas.tamanho = "P";
  camisetaAdidas.cor = "vermelha";
  camisetaAdidas.marca = "adidas";

// Atributo de Classe

  print(Camiseta.nome);
  print(Camiseta.recuperarNome());
  print('''
Camiseta:
  Tamanho: ${camisetaNike.tamanho}
  Cor: ${camisetaNike.cor}
  Marca: ${camisetaNike.marca}
  TipoDeLavagem: ${camisetaNike.tipoDeLavagem()}
''');

  print('''
Camiseta:
  Tamanho: ${camisetaAdidas.tamanho}
  Cor: ${camisetaAdidas.cor}
  Marca: ${camisetaAdidas.marca}
  TipoDeLavagem: ${camisetaAdidas.tipoDeLavagem()}
''');
}

// Modificadores de Acesso
// Públicos (public) - Tudo que eu aprendi até agora
// Privado (private) - Usa-se _ Não poder mais acessar

// Protegido (Protevted) - Não existe no Dart

class Camiseta {
  // Atributos de Instância
  String? tamanho;
  String? _cor;
  String? marca;

//Atributos de Classe (static)
// Usar const pra evitar que mudem
  static const String nome = "Camiseta";

// Metodos de classe
  static String recuperarNome() => nome;

// Encapisulei a cor
  String? get cor => _cor;
  set cor(String? cor) {
    if (cor == 'verde') {
      throw Exception('Não pode ser Verde');
    }
  }

  String tipoDeLavagem() {
    if (marca == "Nike") {
      return 'Não pode lavar na maquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }
}

class _Camiseta2 {
  void recuperarCor() {
    var camiseta = Camiseta();
    camiseta._cor = 'Verde';
  }
}

````

---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)



![][codigo] 




[codigo]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/src/assets/Banner-4.png?raw=true

[codigo2]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/src/assets/Banner-2.jpg?raw=true

[codigo3]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/Or%C3%A7amento13.gif?raw=true

[codigo4]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/Or%C3%A7amento14.gif?raw=true