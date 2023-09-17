import 'dart:convert';
import 'dart:io';

class Funcoes {
  static dynamic lerString(String texto) {
    print(texto);
    dynamic input = stdin.readLineSync(encoding: utf8);
    return input;
  }

  static dynamic lerDouble(String texto) {
    print(texto);
    try {
      dynamic input = stdin.readLineSync(encoding: utf8);
      return double.parse(input);
    } catch (erro) {
      print("\nDigite um numero não letras!\n");
      return 0.0;
    }
  }
}
