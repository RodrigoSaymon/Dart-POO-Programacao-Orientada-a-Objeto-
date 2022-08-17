void main() {
  List<int> numeros = [1, 2, 3];
  numeros.add(2);

  Map<String, int> mapa = {};

  final caixa = Caixa<Bola>;
  var adicionar = caixa.adicionar(Bola());
  Bola? Itencaixa = caixa.getItens();

  final caixaBoneca = Caixa<Boneca>;
  var adicionar2 = caixaBoneca.adicionar(Boneca());
  Boneca? itenBoneca = caixaBoneca.getItens();
}

class Caixa<I> {
  I? _itens;

  void adicionar(I itens) {
    _itens = itens;
  }

  I? getItens() {
    return _itens;
  }
}

class Bola {}

class Boneca {}

class Telefone {}
