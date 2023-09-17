import 'package:imc_calculator_flutter/classes/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Criar pessoa com imc de magreza grave', () {
    Pessoa pessoa = Pessoa(nome: "julio", peso: 40, altura: 1.80);
    expect(pessoa.calcularIMC(), inInclusiveRange(0, 16));
  });

  test('Criar pessoa com imc de magreza moderado', () {
    Pessoa pessoa = Pessoa(nome: "julio", peso: 53, altura: 1.80);
    expect(pessoa.calcularIMC(), inInclusiveRange(16, 17));
  });

  test('Criar pessoa com imc de magreza leve', () {
    Pessoa pessoa = Pessoa(nome: "julio", peso: 58, altura: 1.80);
    expect(pessoa.calcularIMC(), inInclusiveRange(17, 18.5));
  });

  test('Criar pessoa com imc de pessoa saudável', () {
    Pessoa pessoa = Pessoa(nome: "julio", peso: 70, altura: 1.80);
    expect(pessoa.calcularIMC(), inInclusiveRange(18.5, 25));
  });

  test('Criar pessoa com imc de sobrepeso', () {
    Pessoa pessoa = Pessoa(nome: "julio", peso: 90, altura: 1.80);
    expect(pessoa.calcularIMC(), inInclusiveRange(25, 30));
  });

  test('Criar pessoa com imc de obesidade grau I', () {
    Pessoa pessoa = Pessoa(nome: "julio", peso: 100, altura: 1.80);
    expect(pessoa.calcularIMC(), inInclusiveRange(30, 35));
  });

  test('Criar pessoa com imc de obesidade grau II', () {
    Pessoa pessoa = Pessoa(nome: "julio", peso: 120, altura: 1.80);
    expect(pessoa.calcularIMC(), inInclusiveRange(35, 40));
  });

  test('Criar pessoa com imc de obesidade grau III', () {
    Pessoa pessoa = Pessoa(nome: "julio", peso: 200, altura: 1.80);
    expect(pessoa.calcularIMC(), inInclusiveRange(50, 200));
  });
}
