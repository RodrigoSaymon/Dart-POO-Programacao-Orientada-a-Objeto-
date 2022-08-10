

class Pessoa {
  String nome;
  String email;
  Pessoa({
    required this.nome,
    required this.email,
  });
// @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     if (other is Pessoa) {
//       if (other.nome == nome) {
//         if (other.email == email) {
//           return true;
//         } else {
//           return false;
//         }
//       } else {
//         return false;
//       }
//     } else {
//       return false;
//     }
//   }

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;
  //   var isEquasls = false;

  //   if (other is Pessoa) {
  //     if (other.nome == nome) {
  //       if (other.email == email) {
  //         isEquasls = true;
  //       }
  //     }
  //   }
  //   return isEquasls;
  // }

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;
  //   return other is Pessoa && other.nome == nome && other.email == email;
  // }

  // @override
  // int get hashcode {
  //   return nome.hashCode ^ email.hashCode;
  // }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Pessoa &&
      other.nome == nome &&
      other.email == email;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode;

//   @override
//   String toString(){
//     return '''
// Pessoa:
// nome: $nome,
// email: $email
// ''';}


  @override
  String toString() => 'Pessoa(nome: $nome, email: $email)';

 }
