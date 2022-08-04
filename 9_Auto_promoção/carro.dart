abstract class CarroClasseAbstrata {
void velocidadeMaxima(){

}
}

// toda classe tem caracteristicas e comportamnetos
// interface - pois não tem nenhum metodo implementado
abstract class Carro {
  abstract int porta;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima();

  
}
