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


---

<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2]

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)


![][codigo] 
  
  <p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Modificadores - Aula 1.1

  ____

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
<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Construtores - Aula 2

  ____

<h2><p align="left">

O Construtor possui as características semelhantes à de um método, senco formado pelo mesmo nome da classe e parênteses.

**Construtor default** -  todas as classes possuem um construtor automático, mesmo que eu não construa, o Dart já fornece por padrão. É possível chama-lo:
````dart
Pessoa();
````

Posso também, criar um construtor, com as informações que desejo que sejam inicializadas. Dentro do corpo do construtor posso fazer a atribuição das variáveis criadas pela classe:
````dart
class Pessoa {
String? nome;
int? idade;
String? sexo;

Pessoa({required String nomeConstruct,required int idadeConstruct,required String sexoConstruct}){
nome = nomeConstruct;
idade = idadeConstruct;
sexo = sexoConstruct;
}
````

- **this** - se utilizado, consigo pegar os atributos diretor da propria classe e produzir os mesmos efeitos do exemplo anterior;
````dart
Pessoa({required this.nome,required this.idade,required this.sexo});
````

Na invocação da minha classe, preciso informar os parâmetros, conforme o já estudado nas aulas anteriores:

- **Atributos obrigatórios**
- **Atributos opcionais**
- **Atributos nomeados**
````dart
var pessoa = Pessoa (nome: 'Rodrigo Saymon', idade:36, sexo: 'Masculino');
````
**Construtor nomeado** - posso criar outros construtores dentro da mesma classe apenas criando um novo nome:
````dart
Pessoa.semNome({
  required this.nome,
  required this.idade,
});
````

**Construtor factory (fabrica)**-  temos uma regra de negócio para criação da nossa classe. Ela faz uma verificação pra saber se é necessário a criação; 

````
Ex: abertura de conexão com o banco de dados, existe uma conexão aberta? Então retorna ela, se não cria uma nova conexão;
````
````dart
  factory Pessoa.fabrica(String nomeConstrutor) {
    var nome = nomeConstrutor + '_Fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return pessoa;
  }
  ````

---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)



![][codigo] 

<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  inicializadores - Aula 3

  ____

<h2><p align="left">
Nas variáveis privadas do tipo final, eu não posso fazer uma nova atribuição de valor ao chamar o this dentro do construtor, pois a variável já foi inicializada como null. Para resolver isso, posso colocar na frente do construtor ’:’ e fazer as associações necessárias, da seguinte forma: 

````dart
Produto({
    required int id,
    required this.nome,
    required double preco,
  })  : _id = id, _preco = preco
}
````

<h4>

````dart
class Produto {
  final int _id;
  final String nome;
  final double _preco;

  // Produto(this.id, this.nome, this.preco);
  Produto({
    required int id,
    required this.nome,
    required double preco,
  })  : _id = id,
        _preco = preco {
    print(_id);
    print(_preco);
  }
  factory Produto.fabrica({
    required int id,
    required String nome,
    required double preco,
  }) {
    return Produto(id: id, nome: nome, preco: preco);
  }
}
````

---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)

![][codigo] 

<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Null Safety - Aula 3.1

  ____

<h2><p align="left">

**late** - me permite criar um atributo que será inicializado depois. Apesar dele me permitir a criação, possa ser que ele não funcione, pois, no momento da criação, ele sobrescreve todas as outras regras, camuflando em tempo de compilação alguma anomalia que exista;

Em caso de variáveis finais com uso do late, posso fazer a atribuição de valor uma única vez;
````dart
late final String nome;
````

Tome muito cuidado com o late e o ! (force now null). Para resolver, pode ser feita a inicialização no momento da criação da variável, ou a checagem com o null Aware operator ou checagem de null com if/else:
````dart
// null Aware operator
print(cliente.idade?.toLowerCase()??'');

// CHECAGEM DE NULL
if (cliente.idade != null) {
print(cliente.idade!.toLowerCase());
}
````


---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)

![][codigo] 

<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Herança - Aula 4

  ____

<h2><p align="left">

Herança é herdar características e comportamentos de outra classe;
````
EX: Uma classe animal, e uma classe cachorro, o cachorro por ser um animal pode entender as Características e comportamentos do animal.
````
**abstract** - os  métodos das classes, podem ser criados sem implementação, essa responsabilidade fica para os herdeiros, no entanto, a classe pai precisa ser abstrata;

**@override (meta data ou anotação)** -  na classe herdeiras, ao chamar um método, é preciso implementá-la com uma anotação, sinalizando que aquele método está sendo herdado.

**: super** - o herdeiro, ao fazer a implementação de um método, no seu construtor, deve repassar as informações para a classe de onde foi herdado o método;
````dart
Cachorro({required int idade, required String nome}) : super(idade: idade, nome: nome);
````
Todas as atualizações feitas na classe pai precisam ser implementadas nos filhos.

<h4>

````dart
import 'cachorro.dart';

void main() {
  var cachorro = Cachorro(idade: 10, nome: 'Pandora');
  cachorro.tamanho = 'Pequeno';

  // cachorro.idade = 10;
  print(cachorro.calcularIdadHumana());
  print(cachorro.recuperarIdade());

  print('''
Cachorro: 
  Tamanho: ${cachorro.tamanho}
  Idade: ${cachorro.idade}
  Idade Humana: ${cachorro.calcularIdadHumana()}
  ''');
}

abstract class Animal {
  String? tamanho;
  final int idade;
  final String nome;

  Animal({required this.idade, required this.nome});

  int recuperarIdade() {
    return idade;
  }
  int calcularIdadHumana();
}

import 'animal.dart';

class Cachorro extends Animal {
  Cachorro({required int idade, required String nome}) : super(idade: idade, nome: nome);

  @override
    int calcularIdadHumana() {
    if (idade != null) {
       return idade * 7;
    }
    return 0;
  }
}

import 'animal.dart';

class Gato extends Animal {
  Gato({required int idade}) : super(idade: idade, nome: 'Gatinho');
  @override
  int calcularIdadHumana() {
    return idade * 15;
  }
}
````



---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)

![][codigo] 

<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Herança Covariant - Aula 4.1

  ____

<h2><p align="left">

**Covariant** - permite implementar ações em uma classe, dês de que ela estenda a classe estou trabalhando, aceitando a sobre escrita de um tipo especifico da classe; 
````
EX: tenho uma classe fruta e uma classe mamíferos, que por sua vez, possui o método comer fruta. Tenho a classe macaco e humano que estendem mamífero e recebem o método comer fruta. Se quiser definir um tipo especifico de fruta, posso criar uma classe, como por exemplo banana e entender fruta. Dessa forma, com a palavra reservada covariant, todos os tipos relacionados a frutas que sejam sobre escrito em uma classe, podem ser acessados pelas classes que a estende.
````


<h4>

````dart
import 'banana.dart';
import 'fruta.dart';
import 'humano.dart';
import 'macaco.dart';

void main() {
  var humano = Humano();
  humano.comer(Fruta());

  var macaco = Macaco();
  macaco.comer(Banana('Nanica'));
}

class Fruta{}

import 'fruta.dart';

abstract class Mamifero {
  void comer(covariant Fruta fruta);
}

import 'fruta.dart';
import 'mamifero.dart';

class Humano extends Mamifero {
  @override
  void comer(Fruta fruta) {}
}

import 'banana.dart';
import 'mamifero.dart';

class Macaco extends Mamifero {
  @override
  void comer(Banana fruta) {
    print(fruta.tipo);
  }
}

import 'fruta.dart';

class Banana extends Fruta {
 final String tipo;
  Banana (this.tipo);
}
````



---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)

![][codigo] 

<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Associação - Aula 5

  ____

<h2><p align="left">

**Associação** - 'tem um' (endereço telefone) ele 'não é um', é uma relação de dependência. Se divide em:

  - **Composição** - Quando um atributo de associação é obrigatório, não pode existir sem:
  ````
  CPF, Nome, Endereço
  ````

  - **Agregação** - Quando um atributo de associação não é obrigatório, pode existir sem:
  ````
Telefone
````

<h4>

````dart
class Pessoa {
  String? nome;
  Endereco endereco = Endereco();
  CPF cpa = CPF();

  Telefone? telefone;
}

class Endereco {}

class CPF {}

class Telefone {}
````
---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)

![][codigo] 

<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Polimorfismo - Aula 6

  ____

<h2><p align="left">

**Polimorfismo** -  altera a característica de uma classe, estendendo uma classe pai e um comportamento genérico em todas as classes que quero envolver no processo, e, cada uma delas se preocupa com sus particularidades. Está totalmente ligado a herança;

**super** -  faz a sobrescrita de métodos, permitindo que uma nova classe que estenda uma das classes filhas, passem a ter o mesmo comportamento da classe avô;


<h4>

````dart
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
abstract class Medico {
  void operar();
}
import 'medico.dart';

class Anestesista extends Medico {
  @override
  void operar() {
    print('preparar e esterilzar os equipamentos');
    print('anestesiar o paciente');
  }
}
import 'anestesista.dart';

class ResidenteAnestesia extends Anestesista {
  @override
  void operar() {
    super.operar();

    print('Limpar e desmontar os equipamentos');
  }
}
import 'medico.dart';

class Obstreta extends Medico {
  @override
  void operar() {
    print('preparar o pacienten');
    print('nascimento do bebe');
  }
}
import 'medico.dart';

class Pediatra extends Medico {
  @override
  void operar() {
    print('examinar a criaça pós parto');
  }
}
````
---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)

![][codigo] 

<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Interface - Aula 7

  ____

<h2><p align="left">

**Interface** - forma de criar algum objeto ou classe. Estabelece os critérios básicos que minha classe precisa ter para ser considerada um objeto do tipo especifico;

A principal diferença entre classe abstrata e interface é:

- **Classe abstrata** - possui métodos implementados dentro dela:
````dart
abstract class CarroClasseAbstrata {
void velocidadeMaxima(){
}
````
- **Interface** - pode ter métodos, mais não implementado, essa responsabilidade fica para as classes filhas;
````dart
abstract class Carro {
  int velocidadeMaxima();
}
````

**abstract** - além das classes abstratas, posse ter meus atributos abstratos. Em uma interface, a responsabilidade de implementar os atributos fica para as classes filhas, mas, o null safety, não permita que eu não inicialize meus atributos. Para resolver isso, o Dart nos concede a possibilidade do abstract, obrigando a classe que for implementar, ter os atributos disponíveis.
````dart
abstract int porta;
abstract int rodas;
abstract String motor;
````
**implements** - ao invés de estender uma classe, vou implementar. Só terei acesso aos atributos que estão dentro da minha interface.


<h4>

````dart
import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

void main() {
  var uno = Uno();
  var gol = Gol();
  Carro golCarro = Gol();
 

  // print(uno.velocidadeMaxima());
  // print(gol.velocidadeMaxima());
  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);
  print(gol.tipoDeRodas());
}

void printarDadosDoCarro(Carro carro) {
  print('''
carro:
 tipo: ${carro.runtimeType}
 portas: ${carro.porta}
 rodas: ${carro.rodas}
 motor: ${carro.motor}
 velodidade Máxima: ${carro.velocidadeMaxima()}
 ''');
}
abstract class CarroClasseAbstrata {
void velocidadeMaxima(){
}
}

abstract class Carro {
  abstract int porta;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima();
}
import 'carro.dart';

class Gol implements Carro {
  @override
  String motor = '2.0';

  @override
  int porta = 4;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 200;
  }

  String tipoDeRodas() {
    return 'esportivo';
  }
}
import 'carro.dart';

class Uno implements Carro {
  @override
  String motor = '1.0';

  @override
  int porta = 4;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 160;
  }
}
````
---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)

![][codigo] 

<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Auto promoção de Tipo - Aula 8

  ____

<h2><p align="left">

**Auto promoção** - feito uma checagem em uma variável null ela será promovida para não null.
````dart
  String? nome;
  if (nome != null) {
    nome.toLowerCase();
  }
  ````

**Auto promoção de Tipo** - checagem de um tipo especifico para ter se acesso;
  - **is** – checa se uma variável é *(is)* de um tipo especifico. Caso seja, o Dart vai automaticamente converter essa instancia para a classe do tipo. As variáveis de nível superior e atributos de classe não são auto promovidas.
  ````dart
  Carro golCarro = Gol();
  ````
Checagem com if/else:
````dart
  if (golCarro is Gol) {
    golCarro.tipoDeRodas();
  }
  ````
Checagem com ternário:
````dart
  print('tipo de roda: ${carro is Gol ? carro.tipoDeRodas() : 'Não disponível'}');
  ````
<h4>

````dart
import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

void main() {
  Carro golCarro = Gol();
  var uno = Uno();
  var gol = Gol();

  // print(uno.velocidadeMaxima());
  // print(gol.velocidadeMaxima());
  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);
  print(gol.tipoDeRodas());
}
void printarDadosDoCarro(Carro carro) {
  print('''
carro:
 tipo: ${carro.runtimeType}
 portas: ${carro.porta}
 rodas: ${carro.rodas}
 motor: ${carro.motor}
 velodidade Máxima: ${carro.velocidadeMaxima()}
 tipo de roda: ${carro is Gol ? carro.tipoDeRodas() : 'Não disponivel'}
 ''');
}
````
---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)

![][codigo] 

<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Mixin - Aula 9

  ____

<h2><p align="left">

Mixin  é uma classe como qualquer outra. Permite herança múltiplas. Pode ser utilizada de duas formas:

Com a palavra reservada mixin:
````dart
mixin Dancar on Artista {}
````
classe abstrata normal que não pode entender ninguém:
````dart
abstract class Cantar {}
````
**on (somente se)** - estabelece uma condição para o mixin herdar de outra classe, sem ele, o mixin vai poder ser usado em qualquer lugar;
````dart
mixin Dancar on Artista {}
````

**with (com)** - as classes abstratas devem ser entendidas normalmente, já o mixin, utilizo palavra with para herdar suas propriedades. Dessa forma posso herdar tanto de mixins quanto de classes abstratas:
````dart
class Joao extends Artista with Dancar, Cantar {}
````

Se existir métodos entre as classes com o mesmo nome, ele vai sobrescrever os métodos anteriores.



<h4>

````dart
import 'joao.dart';

void main() {
  //  joão é um Artista
  //  joão é um Cantor
  //  joão é um Dançar
  var joao = Joao();
  print(joao.habilidade());
  print(joao.cantar());
  print(joao.dancar());
}
import 'cantar.dart';
import 'dancar.dart';
import 'artista.dart';

class Joao extends Artista with Dancar, Cantar {
}

abstract class Artista {
  String habilidade() {
    return 'Artista Geral';
  }
}
abstract class Cantar {
  String cantar() {
    return 'Canta Rock';
  }
}
import 'artista.dart';

mixin Dancar on Artista{
  String dancar() {
    return 'Dança forró';
  }

  @override
  String habilidade() {
    return 'Dancar';
  }
}

````
---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)

![][codigo] 



<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Cascade Notation - Aula 10

  ____

<h2><p align="left">

**Cascade Notation (..)** - uma forma simplificada de se chamar uma instancia. No primeiro, ponto ele me dar acesso a instancia anterior, e no segundo ponte tenho acesso aos atributos e métodos de instância.


<h4>

````dart
void main() {
  var pessoa = Pessoa()

    ..nome = 'Rodrigo Saymon'
    ..email = 'rodrigotbass@gmail.com'
    ..site = 'academiadoflutter.com.br';

  // pessoa.nome = 'Rodrigo Saymon';
  // pessoa.email = 'rodrigotbass@gmail.com';
  // pessoa.site = 'academiadoflutter.com.br';

  var mapa = <String, String>{}
    ..putIfAbsent('nome', () => 'Rodrigo')
    ..putIfAbsent('email', () => 'null')
    ..putIfAbsent('site', () => '');

//   print('''
// Nome: ${pessoa.nome}
// Nome: ${pessoa.email}
// Nome: ${pessoa.site}

// ''');
}
class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa() {
    print('''
Nome: ${'nome'}
Nome: ${'email'}
Nome: ${'site'}
''');
  }
}
````
---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)

![][codigo] 


<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Callable Class - Aula 11

  ____

<h2><p align="left">

Callable Class é uma forma de criar uma classe e fazer a invocação como se fosse uma função.

**call** - escrita utilizada na criação do método:
````dart
    bool call(String email) {
    return enviar(email);
  }
  ````
Instancio a classe:
````dart
  var enviarEmail = EnviarEmail();
  ````
Chamando o método com Callable Class:
````dart
  enviarEmail('rodrigotbass@gmail.com');
  ````
Chamando o método de forma convencional:
````dart
  enviarEmail.enviar('rodrigotbass@gmail.com');
   ````

<h4>

````dart
import 'enviar_email.dart';

void main() {
   var enviarEmail = EnviarEmail();
    enviarEmail('rodrigotbass@gmail.com');
    enviarEmail.enviar('rodrigotbass@gmail.com');
}
class EnviarEmail {
  bool call(String email) {
    print('Chamando metodo Call');
    return enviar(email);
  }

  bool enviar(String email) {
    print('Chamando metodo enviar');
    return true;
  }
}
````
---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)

![][codigo] 


  <p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Operator Methods - Aula 12

  ____

<h2><p align="left">


Operator Methods são funções ou métodos que utilizamos caracteres. No Dart esses caracteres de operação recebem o nome de operator methods.
**+**  **-**  **==**  **<**  **>**  **>=**  **<=**  **!=**


<h4>

````dart
import 'Numeros.dart';

void main() {
  var num1 = Numeros(10);
  var num2 = Numeros(20);

  num1 + num2;

  var totalSoma = num1 + num2;
  print(totalSoma.i);

  var totalSub = num1 - num2;
  print(totalSub.i);
}
class Numeros {
  int i;
  Numeros(this.i);

  Numeros operator +(Numeros numero2) {
    return Numeros((i + numero2.i) * 2);
  }

  Numeros operator -(Numeros numero2) {
    return Numeros(i - numero2.i);
  }
}
````
---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)

![][codigo] 



<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Assingmment Operator - Aula 13

  ____

<h2><p align="left">

  Assingmment Operator são operator methods que atribui valores as variáveis:
  
  **=** **-=** **/=** **%=** **>>=** **^=** 
    **+=** ***=** **~/=** **&=** **|=** **??=**

  - **=**  valor igual
  ````dart
  var numero = 1;
  ````
  - **+=** ele mesmo mais alguma coisa
  ````dart
  numero += 2;
  ````
  - **/=** dividido por ele mesmo
  ````dart
  var numero2 = 2.0;
  numero2 /= 1.0;
  ````
  - **??=** se variável for nula variável = 'x'
  ````dart
  nome ??= 'rodrigo Saymon';
  ````

<h4>

````dart
String? nome;
void main() {
  var numero = 1;
  print(numero);
  // numero = numero + 2;
  numero += 2;
  print(numero);

  var numero2 = 2.0;
  numero2 /= 1.0;

  print(numero2);

  print(nome);

  // if(nome == null){
  // nome = 'rodrigo saymon';
  // }

  nome ??= 'rodrigo saymon';
  print(nome);
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