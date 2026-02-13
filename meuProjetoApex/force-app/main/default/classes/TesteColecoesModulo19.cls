@IsTest
public class TesteColecoesModulo19 {

    @IsTest
    static void testarColecoes() {

        // ===== PARTE 19.1 — List<T> =====
        List<Conta> contas = new List<Conta>();
        contas.add(new ContaCorrente(1, 'João'));
        contas.add(new ContaCorrente(2, 'Maria'));
        contas.add(new ContaPoupanca(3, 'Ana'));

        contas[0].depositar(100);
        contas[1].depositar(200);
        contas[2].depositar(300);

        Decimal totalTaxas = 0;
        for (Conta c : contas) {
            totalTaxas += c.calcularTaxa();
        }

        System.assertEquals(1 + 2 + 1.5, totalTaxas);


        // ===== PARTE 19.2 — Set<T> (sem duplicados) =====
        Set<Integer> numeros = new Set<Integer>();
        numeros.add(1);
        numeros.add(2);
        numeros.add(2); // duplicado não entra
        numeros.add(3);

        System.assertEquals(3, numeros.size());


        // ===== PARTE 19.3 — Map<K, V> =====
        Map<Integer, Conta> mapa = new Map<Integer, Conta>();
        mapa.put(1, contas[0]);
        mapa.put(2, contas[1]);
        mapa.put(3, contas[2]);

        Conta recuperada = mapa.get(2);
        System.assertEquals(200, recuperada.getSaldo());


        // ===== PARTE 19.4 — Cruzando Set e Map =====
        Set<Integer> buscar = new Set<Integer>{1, 3, 5};

        List<Conta> resultado = new List<Conta>();
        for (Integer n : buscar) {
            if (mapa.containsKey(n)) {
                resultado.add(mapa.get(n));
            }
        }

        System.assertEquals(2, resultado.size());
    }
}