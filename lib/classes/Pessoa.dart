import 'dart:math';

import 'package:imc_calculator_flutter/utils/funcoesDeAjuda.dart';

class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  //construtor com parametro
  Pessoa({String? nome, double? peso, double? altura}) {
    _nome = nome ?? "";
    _peso = peso ?? 0;
    _altura = altura ?? 0;
  }

  //metodo para alterar todos os atributos de pessoa
  lerPessoa() {
    print("---Criação de pessoa---\n");
    _nome = Funcoes.lerString("Informe seu nome: ");

    try {
      double peso = 0;
      double altura = 0;
      do {
        peso == 0 ? peso = Funcoes.lerDouble("Informe seu peso: ") : peso;
        altura == 0
            ? altura = Funcoes.lerDouble("Informe sua altura: ")
            : altura;
      } while (peso == 0.0 || altura == 0.0);

      _peso = peso;
      _altura = altura;
    } catch (erro) {
      print("houve um erro: $erro");
      return null;
    }
  }

  double calcularIMC() {
    double imc = _peso / pow(_altura, 2);

    imc < 16
        ? print(
            "Seu imc é: ${imc.toStringAsFixed(2)}, você está em estado de Magreza grave")
        : imc > 16 && imc < 17
            ? print(
                "Seu imc é: ${imc.toStringAsFixed(2)}, você está em estado de Magreza moderada")
            : imc > 17 && imc < 18.5
                ? print(
                    "Seu imc é: ${imc.toStringAsFixed(2)}, você está estado de Magreza leve")
                : imc > 18.5 && imc < 25
                    ? print(
                        "Seu imc é: ${imc.toStringAsFixed(2)}, você está em estado de saudável")
                    : imc > 25 && imc < 30
                        ? print(
                            "Seu imc é: ${imc.toStringAsFixed(2)}, você está em estado de sobrepeso")
                        : imc > 30 && imc < 35
                            ? print(
                                "Seu imc é: ${imc.toStringAsFixed(2)}, você está em estado de obesidade grau I")
                            : imc > 35 && imc < 40
                                ? print(
                                    "Seu imc é: ${imc.toStringAsFixed(2)}, você está em estado de obesidade grau II (severa)")
                                : imc >= 40
                                    ? print(
                                        "Seu imc é: ${imc.toStringAsFixed(2)}, você está em estado de obesidade grau III (mórbida)")
                                    : null;
    return imc;
  }

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  @override
  String toString() {
    return {"nome": getNome(), "peso": getPeso(), "altura": getAltura()}
        .toString();
  }
}
