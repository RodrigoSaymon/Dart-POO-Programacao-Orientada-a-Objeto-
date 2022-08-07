class EnviarEmail {
  bool call(String email) {
    print('Chamando metodo Call');
    return enviar(email);
  }

  bool enviar(String email) {
    print('Chamando metodo enviar');
    return true;
  }
}
