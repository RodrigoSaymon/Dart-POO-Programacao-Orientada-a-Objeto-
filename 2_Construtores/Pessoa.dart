class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  Pessoa(String nomeConstrutor, int idadeConstrutor, String sexoConstrutor) {
    nome = nomeConstrutor;
    idade = idadeConstrutor;
    sexo = sexoConstrutor;
  }

// Construtor Default
  Pessoa.segubdo({
    required this.nome,
    required this.idade,
    required this.sexo,
  });
  // Construtores Nomeados
  Pessoa.SemNome({
    required this.sexo,
    required this.idade,
  });
  Pessoa.vazia();

  // Construtor do tipo factory
  factory Pessoa.fabrica(String nomeConstrutor) {
    var nome = nomeConstrutor + '_Fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return pessoa;
  }
}
