public class ContaPoupanca extends Conta {

    public ContaPoupanca(Integer numero, String titular){
        super (numero, titular);
    }

    public override Decimal calcularTaxa(){
        return saldo * 0.005;
    }
}