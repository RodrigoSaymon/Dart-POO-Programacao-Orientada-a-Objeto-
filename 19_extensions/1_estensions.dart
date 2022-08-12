



import 'pessoa.dart';
import 'pessoa_saudacao_extencions.dart';
import 'saudacao_string_extensions.dart';

void main() {
  var nome = 'Rodrigo Saymon';

 print(nome.saudacao());
  
  var p1 = Pessoa2(nome:'Rodrigo');
  print(p1.saudacao());


}


