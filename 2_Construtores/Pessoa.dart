// class Pessoa {
// String? nome;
// int? idade;
// String? sexo;

// costrutor defult todas as classes tem automaticamente
//Pessoa(
// String nomeConstruct, int idadeConstruct, String sexoConstruct
// ) {
// nome = nomeConstruct;
// idade = idadeConstruct;
// sexo = sexoConstruct;



class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

// todas as classes tem automaticamente
  // Pessoa();

  Pessoa(String nomeConstrutor, int idadeConstrutor, String sexoConstrutor) {
    nome = nomeConstrutor;
    idade = idadeConstrutor;
    sexo = sexoConstrutor;
  }

// Construtor Default
  Pessoa({
    required this.nome,
    required this.idade,
    required this.sexo,
  });
  // Construtores Nomeados
  Pessoa({
    required this.nome,
    required this.idade,
  });

  // Construtor do tipo factor
  // temos uma regra de negocio para criação da nossa classe
  factory Pessoa.factory(String nomeConstrutor) {
    nome = nomeConstrutor + '_Fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return Pessoa;
  }
}
