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
