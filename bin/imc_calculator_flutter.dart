import 'package:imc_calculator_flutter/classes/Pessoa.dart';
import 'package:imc_calculator_flutter/utils/funcoesDeAjuda.dart';

void main(List<String> arguments) {
  Pessoa pessoa = Pessoa();

  pessoa.lerPessoa();
  pessoa.calcularIMC();
  String resp = Funcoes.lerString("\ndeseja alterar o peso ? (s ou n)");

  while (resp != "n") {
    pessoa.setPeso(Funcoes.lerDouble("digite o novo peso: "));
    pessoa.calcularIMC();
    resp = Funcoes.lerString("\ndeseja continuar? ");
  }
}
