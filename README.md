✅ Projeto Apex — Apostila Caelum (POO com Apex)

Este projeto foi desenvolvido com base nos módulos 12 ao 19 da apostila POO com Apex (Caelum).
O objetivo é aplicar conceitos de Programação Orientada a Objetos usando Apex no Salesforce.
Antes de tudo 1 passos pra achar o projeto clique em Primeiro-Projeto-Apexx em seguida vai em force-app/main/default/classes e em seguida

✅ Módulo 12 — Cadastro de contas 
✅ Módulo 13 — Classe abstrata 
✅ Módulo 14 — Interface 
✅ Módulo 15 — Static 
✅ Módulo 16 — Exceção 
✅ Módulo 19 — List, Set, Map

✅ MÓDULO 12 — Cadastro de novas contas
Exercícios implementados:
Exercício 12.1 — Classe Conta
Arquivo: Conta.cls
Responsável por representar uma conta financeira (número, titular e saldo).
Exercício 12.2 — Método depositar
Arquivo: Conta.cls
Método depositar(Decimal valor) com validação de valor positivo.
Exercício 12.3 — Classe CadastroDeContas
Arquivo: CadastroDeContas.cls
Gerencia a lista de contas (List).

✅ MÓDULO 13 — Classes Abstratas
Exercício 13.1 — Conta abstrata
Arquivo: Conta.cls
Classe abstrata com método abstrato calcularTaxa().
Exercício 13.2 — ContaCorrente
Arquivo: ContaCorrente.cls
Implementa calcularTaxa() (1% do saldo).
Exercício 13.3 — ContaPoupanca
Arquivo: ContaPoupanca.cls
Implementa calcularTaxa() (0,5% do saldo).
Exercício 13.4 — Polimorfismo
Arquivo: TesteColecoesModulo19.cls e MinhaPrimeiraClasseTest.cls
Lista genérica List somando taxas.

✅ MÓDULO 14 — Interfaces
Exercício 14.1 — Interface Tributavel
Arquivo: Tributavel.cls
Exercício 14.2 — ContaCorrente tributável
Arquivo: ContaCorrente.cls
Exercício 14.3 — Calculadora de Impostos
Arquivo: CalculadoraDeImpostos.cls
Exercício 14.4 — SeguroDeVida
Arquivo: SeguroDeVida.cls

✅ MÓDULO 15 — Métodos e Atributos Estáticos
Exercício 15.1 — totalDeContas
Arquivo: Conta.cls
Atributo estático totalDeContas.
Exercício 15.2 — ValidadorFinanceiro
Arquivo: ValidadorFinanceiro.cls
Exercício 15.3 — Uso do Validador
Arquivo: Conta.cls
Método depositar() utilizando ValidadorFinanceiro.

✅ MÓDULO 16 — Exceções
Exercício 16.1 — SaldoInsuficienteException
Arquivo: SaldoInsuficienteException.cls
Exercício 16.2 — Método sacar
Arquivo: Conta.cls
Exercício 16.3 — Tratamento da exceção
Arquivo: MinhaPrimeiraClasseTest.cls

✅ MÓDULO 19 — Coleções (List, Set, Map)
Exercício 19.1 — List
Arquivo: TesteColecoesModulo19.cls
Exercício 19.2 — Set
Arquivo: TesteColecoesModulo19.cls
Exercício 19.3 — Map<Integer, Conta>
Arquivo: TesteColecoesModulo19.cls
Exercício 19.4 — Cruzando Set e Map
Arquivo: TesteColecoesModulo19.cls
🧪 Testes Automatizados
MinhaPrimeiraClasseTest.cls
TesteColecoesModulo19.cls
Cobrem:
depósitos
taxas
impostos
exceções
coleções
