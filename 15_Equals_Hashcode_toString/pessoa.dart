class Pessoa {
  String nome;
  String email;
  Pessoa({
    required this.nome,
    required this.email,
  });

// Equals
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pessoa && other.nome == nome && other.email == email;
  }

// hashCode
  @override
  int get hashCode => nome.hashCode ^ email.hashCode;

// toString
  @override
  String toString() => 'Pessoa(nome: $nome, email: $email)';
}
