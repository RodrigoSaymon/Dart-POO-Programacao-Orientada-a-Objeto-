void main() {
  var pessoa = Pessoa()
  // Cascade Notation (..) - uma forma simplificada de se chamar uma instancia.
  //no primeiro ponto ele me dar acesso a instancia anterior e no segundo ponte tenho acesso aos atributos e metodos de istancia
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
