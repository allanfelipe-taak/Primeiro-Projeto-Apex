@isTest
public class MinhaPrimeiraClasseTest {

    @isTest
    static void testeSistemaFinanceiro() {

        ContaCorrente cc1 = new ContaCorrente(1, 'João');
        ContaCorrente cc2 = new ContaCorrente(2, 'Maria');
        ContaPoupanca cp1 = new ContaPoupanca(3, 'Ana');

        cc1.depositar(100);
        cc2.depositar(200);
        cp1.depositar(300);

        System.assertEquals(1, cc1.calcularTaxa());
        System.assertEquals(2, cc2.calcularTaxa());
        System.assertEquals(1.5, cp1.calcularTaxa());

        List<Tributavel> lista = new List<Tributavel>();
        lista.add(cc1);
        lista.add(cc2);
        lista.add(new SeguroDeVida());

        Decimal totalImposto = CalculadoraDeImpostos.calcularTotal(lista);

        System.assertEquals( cc1.calcularImposto() + cc2.calcularImposto() + 42, totalImposto);

        try {
            cc1.sacar(1000);
            System.assert(false, 'Era para lançar exceção');
        } catch (SaldoInsuficienteException e) {
            System.assert(true);
        }
    }
}
