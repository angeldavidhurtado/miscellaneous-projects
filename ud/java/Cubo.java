import java.util.Scanner;

public class Cubo {

    public static void main(String[] args) {

        Scanner read = new Scanner(System.in);
        String opc = "";
        int opcion = 0;
        Boolean continuar = true;

        while (continuar) {

            try {
                System.out.println("Que quiere hacer");
                System.out.println("1) Figura en el cubo");
                System.out.println("2) Ordenar cubo");

                opc = read.nextLine();
                opcion = Integer.parseInt(opc);

                continuar = false;

            } catch (Exception e) {

            } // fin try

        } // fin continuar

        if (opcion == 1) {
            String ingresado = "";
            int z = 0, x = 0, y = 0;
            continuar = true;

            while (continuar) {
                try {
                    System.out.println("Tamaño del cubo (debe ser un número natural mayor a 4 y impar)");
                    ingresado = read.nextLine();
                    x = Integer.parseInt(ingresado);

                    if (x > 4 && x % 2 != 0)
                        continuar = false;

                } catch (Exception e) {

                }

            } // fin continuar

            int cubo[][][] = new int[x][x][x], i = 0, u = x-1;

            for (int matrizes = 0; matrizes < x; matrizes++) {
                cubo[matrizes][i][i] = 1;
                cubo[matrizes][i][u] = 1;
                i++;
                u--;

                cubo[matrizes][0][0] = 1;
                cubo[matrizes][x-1][x-1] = 1;
                cubo[matrizes][0][x-1] = 1;
                cubo[matrizes][x-1][0] = 1;

                if (matrizes == 0 || matrizes == x-1) {

                    for (int c = 0; c < x; c++) {

                        cubo[matrizes][0][c] = 1;
                        cubo[matrizes][x-1][c] = 1;
                        cubo[matrizes][c][0] = 1;
                        cubo[matrizes][c][x-1] = 1;

                    } // fin for c

                } // fin if matrizes

            } // fin for matrizes

            for (int matrizes = 0; matrizes < x; matrizes++) {
                System.out.println("\n" + "Matriz " + " " + (matrizes+1) + "\n");

                for (int filas = 0; filas < x; filas++) {
                    for (int columnas = 0; columnas < x; columnas++) {
                        System.out.print(cubo[matrizes][filas][columnas] + " ");

                    } // fin filas

                    System.out.println();

                }// fin columnas

                System.out.println();

            } // fin matrizes

        } else if (opcion == 2) {
            String ingresado = "";
            int z = 0, x = 0, y = 0;
            continuar = true;

            while (continuar) {

                try {
                    System.out.println("Número de matrizes (número natural)");
                    ingresado = read.nextLine();
                    z = Integer.parseInt(ingresado);

                    if (z > 0)
                        continuar = false;

                } catch (Exception e) {

                }

            } // fin continuar

            continuar = true;

            while (continuar) {

                try {

                    System.out.println("Número de filas (número natural)");
                    ingresado = read.nextLine();
                    x = Integer.parseInt(ingresado);

                    if (x > 0)
                        continuar = false;

                } catch (Exception e) {

                }

            } // fin continuar

            continuar = true;

            while (continuar) {

                try {

                    System.out.println("Número de columnas (número natural)");
                    ingresado = read.nextLine();
                    y = Integer.parseInt(ingresado);

                    if (y > 0)
                        continuar = false;

                } catch (Exception e) {

                }

            } // fin continuar

            int cubo[][][] = new int[z][x][y];

            System.out.println("\n" + "----------------" + "\n" + "  Cubo Inicial  " + "\n" + "----------------");

            for (int matrizes = 0; matrizes < z; matrizes++) {

                System.out.println();
                System.out.println("Matriz " + (matrizes+1));
                System.out.println();

                for (int filas = 0; filas < x; filas++) {

                    for (int columnas = 0; columnas < y; columnas++) {

                        cubo[matrizes][filas][columnas] = ((int)(Math.random()*(1000-6+1)+6));
                        System.out.print(cubo[matrizes][filas][columnas] + "\t");

                    } // fin columnas

                    System.out.println();

                } // fin filas

                System.out.println();

            } // fin matrizes

            // Se hordenan los numeros

            int lista[] = new int[z*x*y], lista_ordenada[] = new int[z*x*y], i = 0;

            for (int matrizes = 0; matrizes < z; matrizes++) {

                for (int filas = 0; filas < x; filas++) {

                    for (int columnas = 0; columnas < y; columnas++) {

                        lista[i++] = cubo[matrizes][filas][columnas];

                    } // fin columnas

                } // fin filas

            } // fin matrizes

            i = 0;

            for (int total = 0; total < z*x*y; total++) {

                for (int evaluado = 0; evaluado < z*x*y; evaluado++) {

                    int n_v_m = 0;

                    for (int columna = 0; columna < z*x*y; columna++) {

                        if (lista[evaluado] <= lista[columna])
                            n_v_m++;

                    } // fin columna

                    if (n_v_m == z*x*y) {

                        lista_ordenada[i] = lista[evaluado];
                        lista[evaluado] = 1000;
                        evaluado = z*x*y;
                        i++;

                    } // fin if

                } // fin evaluado

            } // fin total

            i = 0;

            System.out.println("\n" + "-----------------" + "\n" + "  Cubo Ordenado  " + "\n" + "-----------------" + "\n");

            for (int matrizes = 0; matrizes < z; matrizes++) {

                System.out.println("\n" + "Matriz " + (matrizes+1) + "\n");

                for (int filas = 0; filas < x; filas++) {

                    for (int columnas = 0; columnas < y; columnas++) {

                        cubo[matrizes][filas][columnas] = lista_ordenada[i];
                        System.out.print(cubo[matrizes][filas][columnas] + "\t");
                        i++;

                    } // fin columnas

                    System.out.println();

                } // fin filas

                System.out.println();

            } // fin matrizes

        } else {

            System.out.println("Opcion no valida");

        } // fin if opcion

    }

}
