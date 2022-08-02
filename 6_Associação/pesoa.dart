class Pessoa {
  String? nome;
  // Composição
  // Quando um atributo de associação é obrigatório
  // Nós estamo falando de composição!!!
  // tem um - asociação (composição é obrigatória)
  Endereco endereco = Endereco();

  CPF cpa = CPF();


  // pode existir sem - "agregação" 
  // Não é obrigatório
  Telefone? telefone;
}

class Endereco {}
class CPF {}

class Telefone {}
