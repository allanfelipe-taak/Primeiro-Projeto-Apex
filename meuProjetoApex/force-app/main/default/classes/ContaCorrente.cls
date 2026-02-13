public class ContaCorrente extends Conta implements Tributavel {

    public ContaCorrente(Integer numero, String titular) {
        super(numero, titular);
    }

    public override Decimal calcularTaxa() {
        return saldo * 0.01;
    }

    public Decimal calcularImposto() {
        return saldo * 0.02;
    }
}