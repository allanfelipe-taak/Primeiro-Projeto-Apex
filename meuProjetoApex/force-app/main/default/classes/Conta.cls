public abstract class Conta {
    public static integer totalDeContas =0;

    public Integer numero;
    public String titular;
    public Decimal saldo;

    public Conta(Integer numero, String titular){
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
        if (saldo < valor) {
            throw new SaldoInsuficienteException('Saldo insuficiente');
        }
        saldo -= valor;
    }

    public abstract Decimal calcularTaxa();
}