import java.util.Scanner;

public class Rosita {

    public static void main(String[] args) {

        Scanner read = new Scanner(System.in);
        String ingresado = "";
        Integer numero = 0, poder = 0;
        Boolean continuar = true;

        while (continuar) {

            try {

                ingresado = read.nextLine();
                numero = Integer.parseInt(ingresado);
                continuar = false;

            } catch (Exception e) {

                poder = poder + 1;

                if (poder == 1) {

                    System.out.println("Hera martes, la profesora Rosita enseñaba los número naturales a los niños de prequinder");

                } else if (poder == 2) {

                    System.out.println("Los números naturales son aquellos que permiten contar los elementos de un conjunto. Se trata del primer conjunto de números que fue utilizado por los seres humanos para contar objetos. Uno (1), dos (2), cinco (5) y nueve (9), por ejemplo, son números naturales.");

                } else if (poder == 3) {

                    System.out.println("No pudo? sabe que le boy a dar tres oportunidades, le quedan tres");

                } else if (poder == 4) {

                    System.out.println("Le quedan dos");

                } else if (poder == 5) {

                    System.out.println("Le queda una");

                } else {

                    System.out.println("Perdio, vemos");
                    continuar = false;

                }

            } // fin catch

        } // fin while

        if (poder > 0 && poder < 6) {

            System.out.println("Si podia, no?!!!");

        } // fin if

    }

}
