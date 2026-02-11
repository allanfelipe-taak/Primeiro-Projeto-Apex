public class CalculadoraDeImpostos {

    public static Decimal calcularTotal(List<Tributavel> lista) {
        Decimal total = 0;

        for (Tributavel t : lista) {
            total += t.calcularImposto();
        }

        return total;
    }
}
