public class CadastroDeContas {

    private List<Conta> contas = new List<Conta>();

    public void adicionarConta(Conta conta) {
        contas.add(conta);
    }

    public List<Conta> listarContas() {
        return new List<Conta>(contas);
    }
}