void main() {
  final nomes = ['Rodrigo', 'Heitor', 'Elã', 'Luana'];

  final pessoasAntigo = nomes.map((nome) => Pessoa6(nome)).toList();

  final pessoa = nomes.map<Pessoa6>(Pessoa6.new).toList();
  // final pessoa = nomes.map<Pessoa6>(Pessoa6.nome).toList();

  for (var pessoa in pessoasAntigo) {
    print('Olá ${pessoa.nome}');
  }

  funcaoQualquer(Pessoa6.new);
}




class Pessoa6 {
  String nome;

  Pessoa6(this.nome);
  Pessoa6.nome(this.nome);
}

void funcaoQualquer(void Function(String) funcao) {
  funcao('Rodrigo');
}
