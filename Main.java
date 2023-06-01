import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        double price = scanner.nextDouble(); // Valor por camisa
        scanner.nextLine(); // Limpar o buffer de leitura

        int countG = 0; // Quantidade de camisas tamanho G
        int countM = 0; // Quantidade de camisas tamanho M
        int countP = 0; // Quantidade de camisas tamanho P

        String size = scanner.nextLine(); // Próximo tamanho de camisa

        while (!size.equals("-1")) {
            if (size.equals("g")) {
                countG++;
            } else if (size.equals("m")) {
                countM++;
            } else if (size.equals("p")) {
                countP++;
            }

            size = scanner.nextLine(); // Próximo tamanho de camisa
        }

        double total = calculateTotal(price, countG, countM, countP);
        System.out.printf("%.2f%n", total);

        scanner.close();
    }

    public static double calculateTotal(double price, int countG, int countM, int countP) {
            int porcentagemP = 0;
            int porcentagemM = 0;
            int porcentagemG = 0;


        if (countG >= 4) {
            porcentagemG = 4;
        } 

        if (countM >= 4) {
            porcentagemM = 6;
        }

        if (countP >= 4) {
            porcentagemP = 8;
        } 

        int soma_porcentagens = porcentagemP + porcentagemM + porcentagemG;
        System.out.println(price);
        double porcentagem = ((countG + countM + countP) * price) * (soma_porcentagens / 100);
        System.out.println(porcentagem);
        double total = ((countG + countM + countP) * price) - porcentagem;
        return total;


        }

        
    }
