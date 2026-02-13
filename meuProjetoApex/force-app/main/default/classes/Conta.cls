public abstract class Conta {

    public static Integer totalDeContas = 0;

    protected Integer numero;
    protected String titular;
    protected Decimal saldo;

    public Conta(Integer numero, String titular) {
        this.numero = numero;
        this.titular = titular;
        this.saldo = 0;
        totalDeContas++;
    }

    public void depositar(Decimal valor) {
        ValidadorFinanceiro.validarValor(valor);
        saldo += valor;
    }

    public void sacar(Decimal valor) {
        ValidadorFinanceiro.validarValor(valor);
        if (valor > saldo) {
            throw new SaldoInsuficienteException('Saldo insuficiente');
        }
        saldo -= valor;
    }

    // ESTE MÉTODO PARA testar 
    public Decimal getSaldo() {
        return saldo;
    }

    public abstract Decimal calcularTaxa();
}
