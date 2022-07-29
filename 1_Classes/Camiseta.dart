// Modificadores de Acesso
// Públicos (public) - Tudo que eu aprendi até agora
// Privado (private) - Usa-se _ Não poder mais acessar

// Protegido (Protevted) - Não existe no Dart

// Atributos - Variáveis dentro de uma classe
// Comportamento
// Funções dentro das classes são chamadas de metodos

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

