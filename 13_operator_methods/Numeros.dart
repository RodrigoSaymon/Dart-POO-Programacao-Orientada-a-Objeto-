class Numeros {
  int i;
  Numeros(this.i);

  Numeros operator +(Numeros numero2) {
    return Numeros((i + numero2.i) * 2);
  }

  Numeros operator -(Numeros numero2) {
    return Numeros(i - numero2.i);
  }
}
