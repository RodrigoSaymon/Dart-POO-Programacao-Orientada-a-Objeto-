void main() {
  var pessoa = Pessoa5();
   print(Pessoa5.nome);
  pessoa.nome = 'Rodrigo Saymon';
}

class Pessoa5 {
  String? _nome;

  String? get nome => _nome;
  set nome(String? nome) {
    if (nome != null && nome.length > 3) {
      _nome = nome;
    }
  }
}
//utilizar somente se tiver alguma regra de negocio
// class Pessoa4 {
//   String? _nome;
//   String? get nome => _nome;
//   set nome(String? nome) => _nome = nome;
// }
